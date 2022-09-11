import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To do lis!",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your own personal list"),
      ),
      body: Column(
        children: [
          Progress(),
          TaskList(),
        ],
      ),
    );
  }
}

class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("You're still a nerd!"),
        LinearProgressIndicator(value: 0.0),
      ],
    );
  }
}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskItem(label: 'Complete All assignments'),
        TaskItem(label: 'Prepare for class Tests'),
        TaskItem(label: 'Learn Flutter framework'),
        TaskItem(label: 'Watch Joginder bassi show!'),
      ],
    );
  }
}

class TaskItem extends StatefulWidget {
  final String label;

  TaskItem({Key? key, required this.label}) : super(key: key);

  @override
  _TaskItemState createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          onChanged: (newValue) => setState(() => _value = newValue),
          value: _value,
        ),
        Text(widget.label),
      ],
    );
  }
}
