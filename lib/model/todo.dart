class ToDos {
  String id;
  String todoText;

  bool isCompleted;
  ToDos({
    required this.id,
    required this.todoText,
    this.isCompleted = false,
  });

  static List<ToDos> todoList() {
    return [
      ToDos(id: '1', todoText: 'Sleeping', isCompleted: true),
      ToDos(id: '2', todoText: 'Playing', isCompleted: true),
      ToDos(
        id: '3',
        todoText: 'Read emails',
      ),
      ToDos(
        id: '4',
        todoText: 'Workout',
      ),
    ];
  }
}
