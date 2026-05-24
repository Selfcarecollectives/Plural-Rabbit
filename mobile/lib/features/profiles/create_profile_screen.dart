import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../shared/widgets/pattern_lock_widget.dart';
import 'profile_service.dart';

/// Full profile creation screen.
///
/// Sections:
///  1. Basic info (name, pronouns, image)
///  2. Password type (none / PIN / password / pattern)
///  3. Credential entry (conditional on type)
///  4. Description (markdown-enabled, Phase 2)
class CreateProfileScreen extends ConsumerStatefulWidget {
  const CreateProfileScreen({
    super.key,
    required this.vaultId,
    this.isTutorial = false,
  });

  final String vaultId;
  final bool isTutorial;

  @override
  ConsumerState<CreateProfileScreen> createState() =>
      _CreateProfileScreenState();
}

class _CreateProfileScreenState extends ConsumerState<CreateProfileScreen> {
  final _nameCtrl = TextEditingController();
  final _pronounsCtrl = TextEditingController();
  final _pinCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _passwordConfirmCtrl = TextEditingController();

  String? _imagePath;
  String _passwordType = 'none';
  String? _patternString;
  String? _error;
  bool _isLoading = false;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _pronounsCtrl.dispose();
    _pinCtrl.dispose();
    _passwordCtrl.dispose();
    _passwordConfirmCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF8FF),
      appBar: AppBar(
        title: const Text('Create Profile'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildBasicInfo(),
              const SizedBox(height: 24),
              _buildPasswordSection(),
              const SizedBox(height: 32),
              if (_error != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text(_error!,
                      style: const TextStyle(color: Colors.red)),
                ),
              if (_isLoading)
                const Center(child: CircularProgressIndicator())
              else
                FilledButton(
                  onPressed: _createProfile,
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFF6B3FA0),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text('Create Profile'),
                ),
            ],
          ),
        ),
      ),
    );
  }

  // -------------------------------------------------------------------------
  // Basic info section
  // -------------------------------------------------------------------------

  Widget _buildBasicInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Basic Information',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        // Profile image picker
        Center(
          child: GestureDetector(
            onTap: _pickImage,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: const Color(0xFF6B3FA0).withOpacity(0.2),
              backgroundImage:
                  _imagePath != null ? AssetImage(_imagePath!) : null,
              child: _imagePath == null
                  ? const Icon(Icons.add_a_photo,
                      size: 32, color: Color(0xFF6B3FA0))
                  : null,
            ),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _nameCtrl,
          decoration: const InputDecoration(
            labelText: 'Name *',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _pronounsCtrl,
          decoration: const InputDecoration(
            labelText: 'Pronouns',
            hintText: 'e.g. she/her, they/them',
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }

  // -------------------------------------------------------------------------
  // Password section
  // -------------------------------------------------------------------------

  Widget _buildPasswordSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Profile Password',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const Text('Optional. Protects this profile from being accessed by '
            'others on the same device.'),
        const SizedBox(height: 12),
        SegmentedButton<String>(
          segments: const [
            ButtonSegment(value: 'none', label: Text('None')),
            ButtonSegment(value: 'pin', label: Text('PIN')),
            ButtonSegment(value: 'password', label: Text('Password')),
            ButtonSegment(value: 'pattern', label: Text('Pattern')),
          ],
          selected: {_passwordType},
          onSelectionChanged: (sel) =>
              setState(() => _passwordType = sel.first),
        ),
        const SizedBox(height: 16),
        if (_passwordType == 'pin') _buildPinEntry(),
        if (_passwordType == 'password') _buildPasswordEntry(),
        if (_passwordType == 'pattern') _buildPatternEntry(),
      ],
    );
  }

  Widget _buildPinEntry() {
    return TextField(
      controller: _pinCtrl,
      keyboardType: TextInputType.number,
      obscureText: true,
      maxLength: 8,
      decoration: const InputDecoration(
        labelText: 'PIN (4–8 digits)',
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _buildPasswordEntry() {
    return Column(
      children: [
        TextField(
          controller: _passwordCtrl,
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _passwordConfirmCtrl,
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Confirm Password',
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }

  Widget _buildPatternEntry() {
    return Column(
      children: [
        const Text('Draw your pattern (min 4 points):',
            style: TextStyle(fontSize: 13)),
        const SizedBox(height: 12),
        Center(
          child: PatternLockWidget(
            onPatternComplete: (pattern) {
              setState(() {
                _patternString = pattern;
                _error = null;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Pattern recorded')),
              );
            },
            onError: (msg) => setState(() => _error = msg),
          ),
        ),
        if (_patternString != null)
          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text('✓ Pattern set',
                style: TextStyle(color: Colors.green)),
          ),
      ],
    );
  }

  // -------------------------------------------------------------------------
  // Actions
  // -------------------------------------------------------------------------

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.gallery);
    if (picked != null) setState(() => _imagePath = picked.path);
  }

  Future<void> _createProfile() async {
    final name = _nameCtrl.text.trim();
    if (name.isEmpty) {
      setState(() => _error = 'Name is required');
      return;
    }

    String? rawCredential;
    if (_passwordType == 'pin') {
      rawCredential = _pinCtrl.text;
      if (rawCredential.length < 4) {
        setState(() => _error = 'PIN must be at least 4 digits');
        return;
      }
    } else if (_passwordType == 'password') {
      if (_passwordCtrl.text != _passwordConfirmCtrl.text) {
        setState(() => _error = 'Passwords do not match');
        return;
      }
      rawCredential = _passwordCtrl.text;
    } else if (_passwordType == 'pattern') {
      if (_patternString == null) {
        setState(() => _error = 'Draw a pattern first');
        return;
      }
      rawCredential = _patternString;
    }

    setState(() {
      _error = null;
      _isLoading = true;
    });

    try {
      final svc = ref.read(profileServiceProvider);
      await svc.createProfile(
        name: name,
        vaultId: widget.vaultId,
        pronouns: _pronounsCtrl.text.trim(),
        profileImagePath: _imagePath,
        passwordType: _passwordType,
        rawPassword: rawCredential,
        isTutorial: widget.isTutorial,
      );
      if (mounted) context.pop();
    } catch (e) {
      setState(() => _error = 'Error creating profile: $e');
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }
}
