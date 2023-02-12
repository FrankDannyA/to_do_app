import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool isComleted;
  Function(bool?)? onChanged;

  TodoTile({
    Key? key,
    required this.taskName,
    required this.isComleted,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            //checkbox
            Checkbox(
              value: isComleted,
              onChanged: onChanged,
            ),

            //name task
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(color: Colors.yellow),
      ),
    );
  }
}
