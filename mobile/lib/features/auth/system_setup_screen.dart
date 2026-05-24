import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

import '../../core/database/app_database.dart';
import '../../core/database/tables.dart';
import '../../core/encryption/password_hasher.dart';
import '../../core/history/history_writer.dart';

/// First-launch system creation wizard.
///
/// Steps:
///  1. App name & logo
///  2. Security Password (optional)
///  3. Master Password (optional, with explanation)
///  4. Login mode (open / closed)
///  5. Confirm & create
class SystemSetupScreen extends ConsumerStatefulWidget {
  const SystemSetupScreen({super.key});

  @override
  ConsumerState<SystemSetupScreen> createState() => _SystemSetupScreenState();
}

class _SystemSetupScreenState extends ConsumerState<SystemSetupScreen> {
  int _step = 0;

  // Step 1
  final _nameCtrl = TextEditingController(text: 'Plural Rabbit');
  String? _logoPath;

  // Step 2 – Security Password
  final _secPassCtrl = TextEditingController();
  final _secPassConfirmCtrl = TextEditingController();
  bool _setSecurityPassword = false;

  // Step 3 – Master Password
  final _masterPassCtrl = TextEditingController();
  final _masterPassConfirmCtrl = TextEditingController();
  bool _setMasterPassword = false;

  // Step 4 – Login mode
  String _loginMode = 'open';

  bool _isLoading = false;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _secPassCtrl.dispose();
    _secPassConfirmCtrl.dispose();
    _masterPassCtrl.dispose();
    _masterPassConfirmCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF8FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('System Setup (${_step + 1}/5)',
            style: const TextStyle(color: Color(0xFF1A1A2E))),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: [
            _buildStep1(),
            _buildStep2(),
            _buildStep3(),
            _buildStep4(),
            _buildStep5(),
          ][_step],
        ),
      ),
    );
  }

  // -------------------------------------------------------------------------
  // Step 1 — App name & logo
  // -------------------------------------------------------------------------

  Widget _buildStep1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Name your app',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const Text(
            'This is purely cosmetic — it\'s what you\'ll see as the app name.'),
        const SizedBox(height: 24),
        TextField(
          controller: _nameCtrl,
          decoration: const InputDecoration(
            labelText: 'App / System name',
            hintText: 'Plural Rabbit',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16),
        GestureDetector(
          onTap: _pickLogo,
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: _logoPath == null
                ? const Center(child: Text('Tap to set a logo (optional)'))
                : Image.asset(_logoPath!),
          ),
        ),
        const Spacer(),
        _nextButton(),
      ],
    );
  }

  // -------------------------------------------------------------------------
  // Step 2 — Security Password
  // -------------------------------------------------------------------------

  Widget _buildStep2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Security Password',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const Text(
            'The Security Password protects the Master History Log and sensitive '
            'settings. It\'s optional — leave it blank to skip.'),
        const SizedBox(height: 24),
        SwitchListTile(
          value: _setSecurityPassword,
          onChanged: (v) => setState(() => _setSecurityPassword = v),
          title: const Text('Set a Security Password'),
        ),
        if (_setSecurityPassword) ...[
          const SizedBox(height: 16),
          TextField(
            controller: _secPassCtrl,
            obscureText: true,
            decoration: const InputDecoration(
                labelText: 'Security Password', border: OutlineInputBorder()),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _secPassConfirmCtrl,
            obscureText: true,
            decoration: const InputDecoration(
                labelText: 'Confirm', border: OutlineInputBorder()),
          ),
        ],
        const Spacer(),
        Row(children: [_backButton(), const Spacer(), _nextButton()]),
      ],
    );
  }

  // -------------------------------------------------------------------------
  // Step 3 — Master Password
  // -------------------------------------------------------------------------

  Widget _buildStep3() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Master Password',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const Text(
            'The Master Password encrypts the entire database using PBKDF2. '
            'Without it, the app uses a device-bound key instead. '
            'This is optional.'),
        const SizedBox(height: 24),
        SwitchListTile(
          value: _setMasterPassword,
          onChanged: (v) => setState(() => _setMasterPassword = v),
          title: const Text('Set a Master Password'),
        ),
        if (_setMasterPassword) ...[
          const SizedBox(height: 16),
          TextField(
            controller: _masterPassCtrl,
            obscureText: true,
            decoration: const InputDecoration(
                labelText: 'Master Password', border: OutlineInputBorder()),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _masterPassConfirmCtrl,
            obscureText: true,
            decoration: const InputDecoration(
                labelText: 'Confirm', border: OutlineInputBorder()),
          ),
        ],
        const Spacer(),
        Row(children: [_backButton(), const Spacer(), _nextButton()]),
      ],
    );
  }

  // -------------------------------------------------------------------------
  // Step 4 — Login mode
  // -------------------------------------------------------------------------

  Widget _buildStep4() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Login Mode',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const Text('This can be changed per-vault later.'),
        const SizedBox(height: 24),
        RadioListTile<String>(
          value: 'open',
          groupValue: _loginMode,
          onChanged: (v) => setState(() => _loginMode = v!),
          title: const Text('Open Login'),
          subtitle: const Text('All profiles scroll across the screen'),
        ),
        RadioListTile<String>(
          value: 'closed',
          groupValue: _loginMode,
          onChanged: (v) => setState(() => _loginMode = v!),
          title: const Text('Closed Login'),
          subtitle: const Text('No names visible — type your profile name'),
        ),
        const Spacer(),
        Row(children: [_backButton(), const Spacer(), _nextButton()]),
      ],
    );
  }

  // -------------------------------------------------------------------------
  // Step 5 — Review & create
  // -------------------------------------------------------------------------

  Widget _buildStep5() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Ready to go!',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        _reviewRow('App name', _nameCtrl.text),
        _reviewRow('Security Password',
            _setSecurityPassword ? 'Set' : 'Not set'),
        _reviewRow(
            'Master Password', _setMasterPassword ? 'Set' : 'Not set'),
        _reviewRow('Login mode',
            _loginMode == 'open' ? 'Open Login' : 'Closed Login'),
        const Spacer(),
        if (_isLoading)
          const Center(child: CircularProgressIndicator())
        else ...[
          Row(children: [_backButton(), const Spacer()]),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: _createSystem,
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xFF6B3FA0),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            child: const Text('Create My System'),
          ),
        ],
      ],
    );
  }

  // -------------------------------------------------------------------------
  // Actions
  // -------------------------------------------------------------------------

  Future<void> _pickLogo() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) setState(() => _logoPath = picked.path);
  }

  Future<void> _createSystem() async {
    if (!_validate()) return;
    setState(() => _isLoading = true);

    try {
      final db = ref.read(appDatabaseProvider);
      final history = ref.read(historyWriterProvider);
      final uuid = const Uuid();
      final systemId = uuid.v4();
      final now = DateTime.now();

      String? secHash;
      if (_setSecurityPassword && _secPassCtrl.text.isNotEmpty) {
        secHash = PasswordHasher.hash(_secPassCtrl.text);
      }

      String? masterHash;
      String? masterSalt;
      if (_setMasterPassword && _masterPassCtrl.text.isNotEmpty) {
        masterHash = PasswordHasher.hash(_masterPassCtrl.text);
        // Salt is managed by EncryptionService; store placeholder flag
        masterSalt = 'pbkdf2_managed';
      }

      await db.systemDao.createSystem(SystemTableCompanion.insert(
        systemId: systemId,
        name: Value(_nameCtrl.text.trim()),
        logoPath: Value(_logoPath),
        loginMode: Value(_loginMode),
        securityPasswordHash: Value(secHash),
        masterPasswordHash: Value(masterHash),
        masterPasswordSalt: Value(masterSalt),
        isTutorialMode: const Value(true), // will be set false after tutorial
        createdAt: now,
        updatedAt: now,
      ));

      // Seed default archive labels
      await db.systemDao.seedDefaultArchiveLabels(systemId, false);

      // Log system creation (tutorial mode is on — this gets skipped,
      // which is correct: system creation is pre-tutorial)
      await history.logSystemCreate(systemId);

      if (mounted) {
        context.go('/onboarding');
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  bool _validate() {
    if (_setSecurityPassword &&
        _secPassCtrl.text != _secPassConfirmCtrl.text) {
      _showError('Security passwords do not match.');
      return false;
    }
    if (_setMasterPassword &&
        _masterPassCtrl.text != _masterPassConfirmCtrl.text) {
      _showError('Master passwords do not match.');
      return false;
    }
    return true;
  }

  void _showError(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg), backgroundColor: Colors.red),
    );
  }

  // -------------------------------------------------------------------------
  // Navigation helpers
  // -------------------------------------------------------------------------

  Widget _nextButton() => FilledButton(
        onPressed: () => setState(() => _step++),
        style: FilledButton.styleFrom(backgroundColor: const Color(0xFF6B3FA0)),
        child: const Text('Next'),
      );

  Widget _backButton() => OutlinedButton(
        onPressed: () => setState(() => _step--),
        child: const Text('Back'),
      );

  Widget _reviewRow(String label, String value) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          children: [
            Text('$label: ',
                style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(value),
          ],
        ),
      );
}
