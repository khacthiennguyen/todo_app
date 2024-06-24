import 'package:flutter/material.dart';
import 'package:todo_app/util/my_btn.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
   DialogBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 216, 197, 27),
      // ignore: sized_box_for_whitespace
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            //get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add new task"),
            ),
            //button => save  + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //add btn
                MyButton(text: "Save", onPressed: onSave),

                const SizedBox(
                  width: 8,
                ),
                //cancel btn
                MyButton(text: "Cancel", onPressed:onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
