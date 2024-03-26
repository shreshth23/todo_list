import 'package:hive_flutter/hive_flutter.dart';

class ToDoList {
  List toDoList = [];
  final _myBox = Hive.box("myBox");

  void createInitialData(){
    toDoList = [
      ["Make tutorial", false],
      ["Do exercise", false]
    ];
  }

  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDatabase(){
    _myBox.put("TODOLIST", toDoList);
  }
}