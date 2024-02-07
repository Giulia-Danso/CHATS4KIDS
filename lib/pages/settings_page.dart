import 'package:chat4kids/pages/notification_page.dart';
import 'package:chat4kids/pages/theme_settings_page.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          'Settings',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
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
            title: const Text(
              'Theme',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent,
              ),
            ),
            leading: const Icon(
              Icons.color_lens,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThemeSettingsPage(),
                  ));
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: const Text(
              'Notifications',
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            leading: const Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationPage(),
                  ));
            },
          ),
          const Divider(
            color: Colors.grey,
          ),
        ]),
      ),
    );
  }
}
