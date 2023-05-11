import 'package:flutter/material.dart';
import '../model/model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController textEditingController = TextEditingController();

  List<Todo> todos = [];

  fetchTodo() async {
    todos = await Todo().select().toList();
  }

  addTodo() async {
    Todo todo = Todo(title: textEditingController.text);
    todo.save();
    todos.add(todo);
    setState(() {});
    Navigator.pop(context);
  }

  @override
  void initState() {
    fetchTodo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(todos[index].title ?? ''),
          trailing: todos[index].is_completed ?? false
              ? const Icon(Icons.check_box)
              : const Icon(Icons.check_box_outline_blank),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => await showModalBottomSheet(
          context: context,
          builder: (context) => ListView(
            children: [
              TextField(
                controller: textEditingController,
              ),
              TextButton(onPressed: addTodo, child: const Text('Add')),
            ],
          ),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
