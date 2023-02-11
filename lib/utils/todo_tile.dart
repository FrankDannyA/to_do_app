import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Text('Make a To Do App'),
        decoration: BoxDecoration(color: Colors.yellow),
      ),
    );
  }
}
