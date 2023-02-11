import 'package:flutter/material.dart';
import 'package:to_do_app/utils/todo_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text('TO DO'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          TodoTile(),
        ],
      ),
    );
  }
}
