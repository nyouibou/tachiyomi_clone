import 'package:flutter/material.dart';

class Extnsscrn extends StatefulWidget {
  const Extnsscrn({super.key});

  @override
  State<Extnsscrn> createState() => _ExtnsscrnState();
}

class _ExtnsscrnState extends State<Extnsscrn> {
  final List<InstalledExtension> installedExtensions = [
    InstalledExtension('Extension 1'),
    InstalledExtension('Extension 2'),
    InstalledExtension('Extension 3'),
    // Add more installed extensions as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Extensions',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: installedExtensions.length,
        itemBuilder: (context, index) {
          return _buildInstalledExtensionItem(installedExtensions[index]);
        },
      ),
    );
  }

  Widget _buildInstalledExtensionItem(InstalledExtension installedExtension) {
    return ListTile(
      title: Text(
        installedExtension.name,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        'Some additional details',
        style: TextStyle(color: Colors.grey),
      ),
      trailing: ElevatedButton(
        onPressed: () {
          _navigateToManagePage(installedExtension);
        },
        child: Text(
          'Manage',
          style: TextStyle(color: Colors.black),
        ),
      ),
      onTap: () {},
    );
  }

  void _navigateToManagePage(InstalledExtension installedExtension) {
    print('Manage button pressed for ${installedExtension.name}');
  }
}

class InstalledExtension {
  final String name;

  InstalledExtension(this.name);
}
