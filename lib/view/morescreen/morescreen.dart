import 'package:flutter/material.dart';

class Morescrn extends StatefulWidget {
  const Morescrn({super.key});

  @override
  State<Morescrn> createState() => _MorescrnState();
}

class _MorescrnState extends State<Morescrn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Settings', style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSettingItem(
            'Theme',
            'Select app theme',
            Icon(Icons.color_lens),
          ),
          Divider(),
          _buildSettingItem(
            'Reading Mode',
            'Select reading mode',
            Icon(Icons.book),
          ),
          Divider(),
          _buildSettingItem(
            'Notifications',
            'Enable/disable notifications',
            Icon(Icons.notifications),
          ),
          Divider(),
          _buildSettingItem(
            'Account',
            'Manage your account',
            Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingItem(String title, String subtitle, Icon icon) {
    return ListTile(
      title: Text(title, style: TextStyle(color: Colors.white)),
      subtitle: Text(subtitle, style: TextStyle(color: Colors.white)),
      leading: icon,
      onTap: () {},
    );
  }
}
