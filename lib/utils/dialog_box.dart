import 'package:flutter/material.dart';
import 'package:todo_list/utils/myButton.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onCancel,
    required this.onSave
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      
      content: Container(
        height: 136,
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: this.controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new Task"
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                myButton(text: "Save", onPressed: this.onSave),
                SizedBox(width: 8,),
                myButton(text: "Cancel", onPressed: this.onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
