import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../shared/theme/app_theme.dart';

/// App Settings Home screen.
///
/// Sections (Addendum §13.11):
/// - Security Settings
/// - Login Settings
/// - Theme & Appearance
/// - GitHub Integration (Phase 7)
/// - Notifications (Phase 4)
/// - Feature Toggles
/// - Import & Export (Phase 6)
/// - About & Onboarding
///
/// Phase 1: structure and navigation stubs only.
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF8FF),
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: [
          _SettingsSection(
            title: 'Security',
            tiles: [
              _SettingsTile(
                icon: Icons.lock,
                title: 'Security Password',
                subtitle: 'Protects the History Log and sensitive settings',
                onTap: () {},
              ),
              _SettingsTile(
                icon: Icons.key,
                title: 'Master Password',
                subtitle: 'Controls database encryption',
                onTap: () {},
              ),
            ],
          ),
          _SettingsSection(
            title: 'Login',
            tiles: [
              _SettingsTile(
                icon: Icons.login,
                title: 'Login Mode',
                subtitle: 'Open or Closed login',
                onTap: () {},
              ),
            ],
          ),
          _SettingsSection(
            title: 'Theme & Appearance',
            tiles: [
              _SettingsTile(
                icon: Icons.color_lens,
                title: 'Primary Color',
                subtitle: 'Set your system\'s theme color',
                onTap: () => _showColorPicker(context, ref),
              ),
              _SettingsTile(
                icon: Icons.text_fields,
                title: 'App Name',
                subtitle: 'Cosmetic name shown in the launcher',
                onTap: () {},
              ),
              _SettingsTile(
                icon: Icons.image,
                title: 'App Logo',
                subtitle: 'Customize the app logo',
                onTap: () {},
              ),
            ],
          ),
          _SettingsSection(
            title: 'GitHub Integration',
            tiles: [
              _SettingsTile(
                icon: Icons.cloud_upload,
                title: 'GitHub Setup',
                subtitle: 'Configure your PAT and repo (Phase 7)',
                onTap: () {},
              ),
            ],
          ),
          _SettingsSection(
            title: 'About',
            tiles: [
              _SettingsTile(
                icon: Icons.help_outline,
                title: 'View Tutorial',
                subtitle: 'Replay the onboarding tutorial',
                onTap: () => context.push('/onboarding'),
              ),
              _SettingsTile(
                icon: Icons.info_outline,
                title: 'Version',
                subtitle: '1.0.0 — Open Source',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showColorPicker(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Pick a theme color'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (final hex in [
              '#6B3FA0',
              '#E91E8C',
              '#1565C0',
              '#2E7D32',
              '#E65100',
              '#37474F',
            ])
              ListTile(
                leading: CircleAvatar(
                    backgroundColor: AppTheme.fromHex(hex).colorScheme.primary),
                title: Text(hex),
                onTap: () {
                  ref.read(activeThemeHexProvider.notifier).state = hex;
                  Navigator.of(ctx).pop();
                },
              ),
          ],
        ),
      ),
    );
  }
}

class _SettingsSection extends StatelessWidget {
  const _SettingsSection({required this.title, required this.tiles});
  final String title;
  final List<Widget> tiles;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 6),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade600,
              letterSpacing: 0.8,
            ),
          ),
        ),
        ...tiles,
        const Divider(height: 1),
      ],
    );
  }
}

class _SettingsTile extends StatelessWidget {
  const _SettingsTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF6B3FA0)),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
