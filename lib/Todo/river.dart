// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:todo_application_1/screen/provider.dart';

// final todoProvider = ChangeNotifierProvider<Providertodo>((ref) {
//   return Providertodo();
// });

// class ExampleToDo extends ConsumerWidget {
//   const ExampleToDo({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final todos = ref.watch(todoProvider);

//     // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
//     return ListView.builder(itemBuilder: (BuildContext, int index) {
//       final todo = todos.todo[index];
//       return TodoWidgets(
//         todo: todo,
//       );
//     });
//   }
// }

// class TodoWidgets extends StatelessWidget {

//   final ToDo todo;
//   const TodoWidgets({required this.todo, Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(8.0),
//       child: ReorderableListView(
//           onReorder: (int oldIndex, int newIndex) {},
//           children: [
//             Card(
//               color: Colors.lightBlueAccent,
//               child: ListTile(
//                 title: Text(todo.title),
//                 leading: const Icon(Icons.abc),
//               ),
//             )
//           ]),
//     );
//   }
// }
