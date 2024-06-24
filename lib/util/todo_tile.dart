// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompeleted;
  Function(bool?)? onChanged;
  Function (BuildContext)? deleteFuntion;

  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompeleted,
    required this.onChanged,
    required this.deleteFuntion,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child:Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(onPressed: deleteFuntion,
            icon: Icons.delete,
            backgroundColor: Colors.red,
          borderRadius: BorderRadius.circular(12),)
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(24),
          child: Row(
            children: [
              //check box
              Checkbox(
                value: taskCompeleted,
                onChanged: onChanged,
                activeColor: Colors.black,
              ),
              //task name
              Text(taskName,
              style: TextStyle(decoration: taskCompeleted ? TextDecoration.lineThrough : TextDecoration.none),),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
