import 'package:chat4kids/pages/change_name.dart';

import 'package:chat4kids/pages/home_page.dart';
import 'package:chat4kids/pages/login_page.dart';
import 'package:chat4kids/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfilePage extends StatefulWidget {
  final String username;

  ProfilePage({
    super.key,
    required this.username,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late ImagePicker _imagePicker;
  XFile? _selectedImage;
  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
  }

  Future<void> _pickImage() async {
    final XFile? selectedImage =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    if (selectedImage != null) {
      setState(() {
        _selectedImage = selectedImage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(
                    onTap: () {},
                  ),
                ));
          },
        ),
        backgroundColor: Colors.greenAccent,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
        title: const Text('My Profile'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/confetti3.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: _pickImage,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: _selectedImage != null
                      ? FileImage(File(_selectedImage!.path))
                      : const AssetImage('assets/giulia.jpeg') as ImageProvider,
                ),
              ),
              Text(
                'Hello, ${widget.username}!',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                color: Colors.white,
              ),
              Center(
                child: ListTile(
                  onTap: () {
                    // Navigate
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChangeName(),
                      ),
                    );
                  },
                  title: const Text(
                    'Change Name',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Colors.white,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                title: const Text(
                  'Open Chat',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const Divider(
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
