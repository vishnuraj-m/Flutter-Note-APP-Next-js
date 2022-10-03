import 'package:flutter/material.dart';

enum ActionType {
  addNote,
  editNote,
}

class ScreenAddNote extends StatelessWidget {
  final ActionType type;
  String? id;
  ScreenAddNote({
    super.key,
    required this.type,
    this.id,
  });

  Widget get saveButton => TextButton.icon(
        onPressed: () {
          switch (type) {
            case ActionType.addNote:
              // add note
              break;
            case ActionType.editNote:
              // edit note
              break;
          }
        },
        icon: const Icon(Icons.save),
        label: const Text(
          'Save',
          style: TextStyle(color: Colors.white),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(type.name.toUpperCase()),
        actions: [
          saveButton,
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Title',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              maxLines: 4,
              maxLength: 100,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Content',
              ),
            ),
          ],
        ),
      )),
    );
  }
}
