import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightGreenAccent.shade100),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35.0),
          borderSide: const BorderSide(color: Colors.lightGreenAccent),
        ),
        fillColor: Colors.grey[250],
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.greenAccent),
      ),
    );
  }
}
