import 'package:flutter/material.dart';
import 'package:todo_application_1/Drawer/app_drawer.dart';
import 'package:todo_application_1/Todo/todo_shown.dart';
import 'package:todo_application_1/model/todo.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final todosList = ToDos.todoList();

  // ignore: non_constant_identifier_names
  final _Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: const MainDrawer(),
      appBar: AppBar(
        title: const Text("Tasks", textAlign: TextAlign.start),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Add TodoList"),
                      content: TextFormField(
                        controller: _Controller,
                        maxLines: 2,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Type your new todo',
                          labelText: 'Title',
                        ),
                      ),
                      actions: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            _addToDoItem(_Controller.text);
                            Navigator.pop(context);
                          },
                          child: const Text("Add"),
                        ),
                      ],
                    );
                  });
            },
            icon: const Icon(
              Icons.add_alarm,
              color: Colors.white,
            ),
            iconSize: 30,
          ),
          const SizedBox(
            width: 100,
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Column(
              children: [
                Expanded(
                  child:
                      //ReorderableListView(
                      ListView(
                    // onReorder: (int oldIndex, int newIndex) {
                    //   setState(() {
                    //     if (newIndex > oldIndex) {
                    //       newIndex = 1;
                    //     }
                    //     final items=widget.T
                    //   });
                    // },
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                          bottom: 20,
                        ),
                        child: const Text(
                          'Your tasks',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      // ignore: non_constant_identifier_names
                      for (ToDos Todoo in todosList)
                        ToDoItem(
                          todoss: Todoo,
                          onToDoChanged: _handleToDoChange,
                          onDeleteItem: _deleteToDoItem,
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _handleToDoChange(ToDos todo) {
    setState(() {
      todo.isCompleted = !todo.isCompleted;
    });
  }

  void _deleteToDoItem(String id) {
    setState(() {
      //it remove that id from list by using remove function
      todosList.removeWhere((item) => item.id == id);
      //  it check the id is match which we pass here
    });
  }

  void _addToDoItem(String toDo) {
    setState(() {
      todosList.add(ToDos(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        todoText: toDo,
      ));
    });
    _Controller.clear();
  }
}
