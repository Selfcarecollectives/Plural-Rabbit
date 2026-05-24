import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../core/database/app_database.dart';
import '../core/database/tables.dart';

/// Root navigation screen — the pre-login entry point.
///
/// Shows either:
///  - Open Login: horizontal scroll of all vaults (or profiles if no vaults)
///  - Closed Login: blank name+password entry
///
/// Accessible: gear icon → Settings (before login)
class NavigationScreen extends ConsumerStatefulWidget {
  const NavigationScreen({super.key});

  @override
  ConsumerState<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends ConsumerState<NavigationScreen> {
  List<VaultTableData> _vaults = [];
  SystemTableData? _system;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final db = ref.read(appDatabaseProvider);
    final system = await db.systemDao.getSystem();
    if (system == null) {
      if (mounted) context.go('/setup');
      return;
    }
    final vaults = await db.vaultDao.getTopLevelVaults(system.systemId);
    setState(() {
      _system = system;
      _vaults = vaults;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Scaffold(
          body: Center(child: CircularProgressIndicator()));
    }

    final loginMode = _system?.loginMode ?? 'open';

    return Scaffold(
      backgroundColor: const Color(0xFFFAF8FF),
      appBar: AppBar(
        title: Text(_system?.name ?? 'Plural Rabbit'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.push('/settings'),
          ),
        ],
      ),
      body: loginMode == 'open'
          ? _OpenLoginView(
              vaults: _vaults,
              systemId: _system?.systemId ?? '',
            )
          : const _ClosedLoginView(),
    );
  }
}

// ---------------------------------------------------------------------------
// Open Login
// ---------------------------------------------------------------------------

class _OpenLoginView extends ConsumerWidget {
  const _OpenLoginView({required this.vaults, required this.systemId});
  final List<VaultTableData> vaults;
  final String systemId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        if (vaults.isEmpty) ...[
          // No vaults yet — show system-level profiles directly
          Center(
            child: Column(
              children: [
                const SizedBox(height: 48),
                const Icon(Icons.person_add_alt_1,
                    size: 64, color: Color(0xFF6B3FA0)),
                const SizedBox(height: 16),
                const Text('No profiles yet.',
                    style: TextStyle(fontSize: 16)),
                const SizedBox(height: 12),
                FilledButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text('Create First Profile'),
                  onPressed: () => context.push(
                      '/profile/create?vaultId='),
                  style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xFF6B3FA0)),
                ),
              ],
            ),
          ),
        ] else ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text('Select a vault',
                style: Theme.of(context).textTheme.titleMedium),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 140,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: vaults.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (ctx, i) {
                final vault = vaults[i];
                return _VaultCard(vault: vault);
              },
            ),
          ),
        ],
        const SizedBox(height: 32),
        // Curated views section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Text('Views',
                  style: Theme.of(context).textTheme.titleMedium),
              const Spacer(),
              // Phase 2: curated view list
            ],
          ),
        ),
      ],
    );
  }
}

class _VaultCard extends StatelessWidget {
  const _VaultCard({required this.vault});
  final VaultTableData vault;

  @override
  Widget build(BuildContext context) {
    Color primary;
    try {
      final hex = vault.themeHex.replaceFirst('#', '');
      primary = Color(int.parse('FF$hex', radix: 16));
    } catch (_) {
      primary = const Color(0xFF6B3FA0);
    }

    return GestureDetector(
      onTap: () => context.push('/vault/${vault.vaultId}'),
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          color: primary.withOpacity(0.15),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: primary.withOpacity(0.4)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.layers, color: primary, size: 36),
            const SizedBox(height: 8),
            Text(
              vault.name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: primary,
                  fontSize: 13),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Closed Login
// ---------------------------------------------------------------------------

class _ClosedLoginView extends StatefulWidget {
  const _ClosedLoginView();

  @override
  State<_ClosedLoginView> createState() => _ClosedLoginViewState();
}

class _ClosedLoginViewState extends State<_ClosedLoginView> {
  final _nameCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  @override
  void dispose() {
    _nameCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Icon(Icons.lock_outline,
              size: 48, color: Color(0xFF6B3FA0)),
          const SizedBox(height: 24),
          TextField(
            controller: _nameCtrl,
            decoration: const InputDecoration(
              labelText: 'Profile or Vault Name',
              border: OutlineInputBorder(),
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
            onPressed: () => context.go('/dashboard'),
            style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFF6B3FA0)),
            child: const Text('Enter'),
          ),
        ],
      ),
    );
  }
}
