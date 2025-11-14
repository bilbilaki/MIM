import 'package:flutter/material.dart';
import 'package:waterfall_flow/waterfall_flow.dart';
import 'grid_card.dart';

class GridWidget extends StatefulWidget {
  const GridWidget({super.key});

  @override
  State<GridWidget> createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {
  // Placeholder data - replace with your actual data
  final List<Map<String, dynamic>> _list = [
    {
      'title': 'Dashboard',
      'subtitle': 'View statistics',
      'icon': Icons.dashboard,
      'color': Colors.blue,
    },
    {
      'title': 'Profile',
      'subtitle': 'User settings',
      'icon': Icons.person,
      'color': Colors.green,
    },
    {
      'title': 'Messages',
      'subtitle': 'Chat inbox',
      'icon': Icons.message,
      'color': Colors.orange,
    },
    {
      'title': 'Settings',
      'subtitle': 'App preferences',
      'icon': Icons.settings,
      'color': Colors.purple,
    },
    {
      'title': 'Analytics',
      'subtitle': 'Data insights',
      'icon': Icons.analytics,
      'color': Colors.teal,
    },
    {
      'title': 'Notifications',
      'subtitle': 'Alerts',
      'icon': Icons.notifications,
      'color': Colors.red,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: WaterfallFlow.builder(
        padding: const EdgeInsets.all(5.0),
        gridDelegate: SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          lastChildLayoutTypeBuilder: (index) => index == _list.length
              ? LastChildLayoutType.foot
              : LastChildLayoutType.none,
        ),
        itemCount: _list.length + 1, // +1 for footer
        itemBuilder: (BuildContext context, int index) {
          // Footer item
          if (index == _list.length) {
            return Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: const Text(
                'No more items',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            );
          }

          // Regular grid items
          final item = _list[index];
          return GridCard(
            title: item['title'] ?? 'Title',
            subtitle: item['subtitle'],
            icon: item['icon'] ?? Icons.apps,
            iconColor: item['color'] ?? Colors.blue,
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${item['title']} tapped'),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
