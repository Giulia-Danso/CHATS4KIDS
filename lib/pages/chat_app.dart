import 'package:chat4kids/pages/chat_page.dart';
import 'package:chat4kids/pages/login_page.dart';
import 'package:chat4kids/pages/settings_page.dart';
import 'package:flutter/material.dart';

class ChatApp extends StatefulWidget {
  const ChatApp({super.key});

  @override
  State<ChatApp> createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    LoginPage(onTap: () {}),
    const ChatPage(
      receiverUserEmail: '',
      receiverUserID: '',
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppBar(
        title: const Text('Chat4Kids'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
