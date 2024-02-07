import 'package:chat4kids/components/my_buttons.dart';
import 'package:chat4kids/components/mytextfield.dart';
import 'package:flutter/material.dart';

class ChangeName extends StatefulWidget {
  final void Function(String newName) onChange;
  const ChangeName({super.key, required this.onChange});

  @override
  State<ChangeName> createState() => _ChangeNameState();
}

class _ChangeNameState extends State<ChangeName> {
  TextEditingController _newNameController = TextEditingController();

  void confirmNameChange() {
    String newName = _newNameController.text;

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/confetti3.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: AlertDialog(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          'Change Name',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        content: TextField(
          controller: _newNameController,
          decoration: const InputDecoration(
            hintText: 'Enter new name',
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Cancel ❌',
              style: TextStyle(color: Colors.black),
            ),
          ),
          ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.green),
            ),
            onPressed: () {
              final newName = _newNameController.text;
              widget.onChange(newName);
              Navigator.of(context).pop();
            },
            child: const Text(
              'Confirm 👍',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
