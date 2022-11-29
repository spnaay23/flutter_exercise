import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Todo.dart';

// ของจริงอยู่ที่ main3

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SimpleDialog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  var _selected = "";
  List<String> data = ['apple', 'banana'];
  List<Todo> todo_list = [Todo('work', true), Todo('travel', false)];
  _displayDialog(BuildContext context) async {
    _selected = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          // child: Text('Hi'),
          child: SimpleDialog(
            title: Text('Choose food'),
            children: [
              Text("hi"),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "Pizza 1");
                },
                child: const Text('Pizza'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "Burger");
                },
                child: const Text('Burger'),
              ),
            ],
            elevation: 10,
          ),
        );
      },
    );

    if (_selected != null) {
      Todo x = Todo(_selected, false);
      setState(() {
        // _selected = _selected;
        todo_list.add(x);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter SimpleDialog"),
      ),
      body: ListView.builder(
          itemCount: todo_list.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text('${index + 1}'),
              title: Text('${todo_list[index].getTitle()}'),
              subtitle: Text('${todo_list[index].getDone()}'),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _displayDialog(context);
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    );
  }
}
