import 'package:chat4kids/pages/notification_page.dart';
import 'package:chat4kids/pages/theme_settings_page.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/confetti3.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(children: [
          ListTile(
            title: const Text('Theme'),
            leading: const Icon(Icons.color_lens),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThemeSettingsPage(),
                  ));
            },
          ),
          ListTile(
            title: const Text('Notification'),
            leading: const Icon(Icons.notifications),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationPage(),
                  ));
            },
          )
        ]),
      ),
    );
  }
}
