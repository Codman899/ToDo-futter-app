import 'package:flutter/material.dart';

import '../model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDos todoss;
  // ignore: prefer_typing_uninitialized_variables
  final onToDoChanged;
  // ignore: prefer_typing_uninitialized_variables
  final onDeleteItem;

  const ToDoItem({
    Key? key,
    required this.todoss,
    required this.onToDoChanged,
    required this.onDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onLongPress: () {
          onToDoChanged(todoss);
        },
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Long press to mark as done'),
                  content: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('okk')),
                );
              });
        },

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,

        leading: Icon(
          todoss.isCompleted ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.blue,
        ),
        title: Text(
          todoss.todoText, // take value of text from list or newly add text
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            decoration: todoss.isCompleted ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 5,
          ),
        ),

        trailing: IconButton(
          color: Colors.red,
          iconSize: 25,
          icon: const Icon(Icons.delete),
          onPressed: () {
            onDeleteItem(todoss.id);
          },
        ),
        //),
      ),
    );
  }
}
