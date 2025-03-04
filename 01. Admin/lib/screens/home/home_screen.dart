import 'package:gg_admin/constants.dart';
import 'package:gg_admin/screens/home/dashboard_section/admin_dashboard.dart';
import 'package:gg_admin/screens/home/product_controls_section/product_controls.dart';
import 'package:gg_admin/screens/settings/settings_screen.dart';
import 'package:gg_admin/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GG Admin'),
        titleSpacing: 0,
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SettingsScreen(),
              ),
            ),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: const Padding(
        padding: EdgeInsets.all(kScaffoldBodyPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vGap4,
              AdminDashboard(),
              vGap8,
              ProductControls(),
              vGap8,
            ],
          ),
        ),
      ),
    );
  }
}
