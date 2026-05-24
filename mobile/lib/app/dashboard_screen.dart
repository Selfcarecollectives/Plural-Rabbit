import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// Dashboard screen — the main logged-in view.
///
/// Spec (Addendum §13.3):
/// - Widget dashboard with draggable, reorderable panels
/// - Bottom nav bar with 6 main sections
/// - Settings gear top-right
/// - '+' tab to add additional profiles to active front roster (Phase 2)
/// - Profile Switcher persistent element (Phase 2)
///
/// Phase 1: scaffold with panel placeholders and bottom nav.
/// Phase 2: panels are populated with real content; dragging is wired up.
class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  int _selectedTab = 0;

  // Dashboard panel order — user-customizable (Phase 2: persist to DB).
  // Must NOT be const: onReorder mutates this list at runtime.
  final List<_DashboardPanel> _panels = [
    _DashboardPanel(
        icon: Icons.chat_bubble_outline, label: 'Messages'),
    _DashboardPanel(
        icon: Icons.people_outline, label: 'System'),
    _DashboardPanel(
        icon: Icons.book_outlined, label: 'Memory'),
    _DashboardPanel(
        icon: Icons.health_and_safety_outlined,
        label: 'Medical'),
    _DashboardPanel(icon: Icons.storage, label: 'Data'),
    _DashboardPanel(
        icon: Icons.account_tree, label: 'Hierarchy'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF8FF),
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          // Phase 2: active front profile switcher
          IconButton(
            icon: const Icon(Icons.add_circle_outline),
            tooltip: 'Add to front roster',
            onPressed: () {}, // Phase 2
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.push('/settings'),
          ),
        ],
      ),
      body: ReorderableListView.builder(
        padding: const EdgeInsets.all(16),
        onReorder: (oldIdx, newIdx) {
          setState(() {
            if (oldIdx < newIdx) newIdx--;
            final item = _panels.removeAt(oldIdx);
            _panels.insert(newIdx, item);
          });
        },
        itemCount: _panels.length,
        itemBuilder: (ctx, i) {
          final panel = _panels[i];
          return _DashboardCard(
            key: ValueKey(panel.label),
            panel: panel,
          );
        },
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedTab,
        onDestinationSelected: (i) => setState(() => _selectedTab = i),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.chat_bubble_outline),
            selectedIcon: Icon(Icons.chat_bubble),
            label: 'Messages',
          ),
          NavigationDestination(
            icon: Icon(Icons.people_outline),
            selectedIcon: Icon(Icons.people),
            label: 'System',
          ),
          NavigationDestination(
            icon: Icon(Icons.book_outlined),
            selectedIcon: Icon(Icons.book),
            label: 'Memory',
          ),
          NavigationDestination(
            icon: Icon(Icons.health_and_safety_outlined),
            selectedIcon: Icon(Icons.health_and_safety),
            label: 'Medical',
          ),
          NavigationDestination(
            icon: Icon(Icons.storage_outlined),
            selectedIcon: Icon(Icons.storage),
            label: 'Data',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_tree_outlined),
            selectedIcon: Icon(Icons.account_tree),
            label: 'Hierarchy',
          ),
        ],
      ),
    );
  }
}

class _DashboardPanel {
  const _DashboardPanel({required this.icon, required this.label});
  final IconData icon;
  final String label;
}

class _DashboardCard extends StatelessWidget {
  const _DashboardCard({super.key, required this.panel});
  final _DashboardPanel panel;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(panel.icon, color: const Color(0xFF6B3FA0)),
        title: Text(panel.label,
            style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: const Text('Coming in the next phase'),
        trailing: const Icon(Icons.drag_handle),
      ),
    );
  }
}
