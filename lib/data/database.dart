import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  //reference our box 
  final _mybox = Hive.box('mybox');
  
//run this method if this 1st time ever opening this app
  void createInitialData(){
    toDoList = [
      ["Make some cake",false],

    ];
  }

  //load data from db
  void loadData(){
    toDoList = _mybox.get("TODOLIST");
  }

  //update Databse
  void updateDataBase(){
    _mybox.put("TODOLIST", toDoList);
  }

}