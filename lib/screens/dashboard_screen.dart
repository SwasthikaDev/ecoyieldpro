// lib/screens/dashboard_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/auth_service.dart';

class DashboardScreen extends StatelessWidget {
  final Map<String, dynamic>? farmData;
  DashboardScreen({this.farmData});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('EcoYieldPro Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () async {
              await authService.signOut();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to EcoYieldPro!',
              style: theme.textTheme.headline5,
            ),
            SizedBox(height: 20),
            Text(
              'Your sustainable farming assistant',
              style: theme.textTheme.subtitle1,
            ),
            SizedBox(height: 40),
            // Display farm data if available
            if (farmData != null) ...[
              Text('Farm Name: ${farmData!['name']}'),
              Text('Farm Size: ${farmData!['acres']} acres'),
              Text('Number of Crops: ${(farmData!['crops'] as List).length}'),
              Text('Number of Workers: ${(farmData!['workers'] as List).length}'),
            ],
            // Add more dashboard widgets here
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality for main action
          // e.g., add a new crop, start a new analysis, etc.
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.eco),
            label: 'Crops',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: 'Analysis',
          ),
        ],
        // Add onTap handler to navigate between screens
      ),
    );
  }
}