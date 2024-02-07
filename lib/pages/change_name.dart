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
    return AlertDialog(
      title: const Text('Change Name'),
      content: TextField(
        controller: _newNameController,
        decoration: const InputDecoration(hintText: 'Enter new name'),
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
    );
  }
}
