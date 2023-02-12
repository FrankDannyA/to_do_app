import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //reference our box
  final _myBox = Hive.box('mybox');

  //run this method if this is opening this app
  void createInitialData() {
    toDoList = [
      ["Open my App", true],
      ["Create a person Task.", false],
    ];
  }

  //load the data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //update the database
  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}

//hive_generator: 2.0.0
