import 'package:flutter/material.dart';
import 'package:to_do_app/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    Key? key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task.',
              ),
            ),
            //buttons -> save + cansel
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //save buttton
                MyButton(text: 'Save', onPressed: onSave),
                const Spacer(),
                //cancel button
                MyButton(text: 'Cancel', onPressed: onCancel)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
