import 'package:flutter/material.dart';

import '../../widgets/reusable_listtile.dart';

class SettingsPage extends StatelessWidget {
  static String id = "SettingsPage";
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
        ),
      ),
      body: ListView(
        children: const [
          ReusableListTile(
            title: 'Account',
            leadingIcon: Icons.account_circle,
          ),
          ReusableListTile(
            title: 'Notification',
            leadingIcon: Icons.notifications,
          ),
          ReusableListTile(title: 'Language', leadingIcon: Icons.language),
          ReusableListTile(
            title: 'Change Address',
            leadingIcon: Icons.my_location_outlined,
          )
        ],
      ),
    );
  }
}
