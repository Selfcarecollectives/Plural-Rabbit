import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/database/tables.dart';
import 'vault_service.dart';

/// Entry point into a vault — shows either Open Login (horizontal profile
/// scroll) or Closed Login (blind name/password entry), depending on the
/// vault's login_mode setting.
class VaultLoginScreen extends ConsumerStatefulWidget {
  const VaultLoginScreen({super.key, required this.vaultId});
  final String vaultId;

  @override
  ConsumerState<VaultLoginScreen> createState() => _VaultLoginScreenState();
}

class _VaultLoginScreenState extends ConsumerState<VaultLoginScreen> {
  VaultTableData? _vault;
  bool _loading = true;

  // Vault master password field (if vault requires one)
  final _vaultPasswordCtrl = TextEditingController();
  bool _vaultPasswordVerified = false;
  String? _vaultPasswordError;

  @override
  void initState() {
    super.initState();
    _loadVault();
  }

  Future<void> _loadVault() async {
    final svc = ref.read(vaultServiceProvider);
    final vault = await svc.getVaultById(widget.vaultId);
    setState(() {
      _vault = vault;
      _loading = false;
      // If vault has no master password, skip straight to profile list
      if (vault?.masterPasswordHash == null) _vaultPasswordVerified = true;
    });
  }

  @override
  void dispose() {
    _vaultPasswordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    if (_vault == null) {
      return const Scaffold(body: Center(child: Text('Vault not found')));
    }

    return Scaffold(
      backgroundColor: Color(
          int.parse('0xFF${_vault!.themeHex.replaceFirst('#', '')}')
              .toUnsigned(32) |
              0xFF000000),
      appBar: AppBar(
        title: Text(_vault!.name),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () =>
                context.push('/vault/${widget.vaultId}/settings'),
          ),
        ],
      ),
      body: _vaultPasswordVerified
          ? _buildProfileList()
          : _buildVaultPasswordEntry(),
    );
  }

  // -------------------------------------------------------------------------
  // Vault master password gate
  // -------------------------------------------------------------------------

  Widget _buildVaultPasswordEntry() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(_vault!.name,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          const SizedBox(height: 32),
          TextField(
            controller: _vaultPasswordCtrl,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Vault Password',
              border: const OutlineInputBorder(),
              errorText: _vaultPasswordError,
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: _verifyVaultPassword,
            style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFF6B3FA0)),
            child: const Text('Enter Vault'),
          ),
        ],
      ),
    );
  }

  Future<void> _verifyVaultPassword() async {
    final svc = ref.read(vaultServiceProvider);
    final ok = await svc.verifyVaultPassword(
        widget.vaultId, _vaultPasswordCtrl.text);
    setState(() {
      if (ok) {
        _vaultPasswordVerified = true;
        _vaultPasswordError = null;
      } else {
        _vaultPasswordError = 'Incorrect vault password';
      }
    });
  }

  // -------------------------------------------------------------------------
  // Profile list (open or closed mode)
  // -------------------------------------------------------------------------

  Widget _buildProfileList() {
    if (_vault!.loginMode == 'open') {
      return _OpenLoginView(vaultId: widget.vaultId);
    }
    return _ClosedLoginView(vaultId: widget.vaultId);
  }
}

// ---------------------------------------------------------------------------
// Open Login — horizontal profile cards scroll
// ---------------------------------------------------------------------------

class _OpenLoginView extends ConsumerWidget {
  const _OpenLoginView({required this.vaultId});
  final String vaultId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Profile list populated in Phase 2 (multi-profile login)
    // Here we render the horizontal scroll scaffold
    return Column(
      children: [
        const SizedBox(height: 32),
        Text('Select a profile',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center),
        const SizedBox(height: 24),
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemCount: 0, // populated by Phase 2 provider
            itemBuilder: (ctx, i) => const SizedBox(),
          ),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Closed Login — blind name + password entry
// ---------------------------------------------------------------------------

class _ClosedLoginView extends ConsumerStatefulWidget {
  const _ClosedLoginView({required this.vaultId});
  final String vaultId;

  @override
  ConsumerState<_ClosedLoginView> createState() => _ClosedLoginViewState();
}

class _ClosedLoginViewState extends ConsumerState<_ClosedLoginView> {
  final _nameCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  String? _error;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Enter your profile name',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          TextField(
            controller: _nameCtrl,
            decoration: InputDecoration(
              labelText: 'Profile Name',
              border: const OutlineInputBorder(),
              errorText: _error,
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _passwordCtrl,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Password (if set)',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: _attemptLogin,
            style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFF6B3FA0)),
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }

  Future<void> _attemptLogin() async {
    // Profile auth logic implemented in Phase 2 (ProfileAuthService)
    // Placeholder navigation for Phase 1 wiring
    if (_nameCtrl.text.isEmpty) {
      setState(() => _error = 'Enter your profile name');
      return;
    }
    setState(() => _error = null);
    context.go('/dashboard');
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }
}
