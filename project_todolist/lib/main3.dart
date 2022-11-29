import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Todo.dart';

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
  TextEditingController _textFieldController = TextEditingController();
  var _selected = "";
  List<String> data = ['apple', 'banana'];
  List<Todo> todo_list = [Todo('work', true), Todo('travel', false)];

  Future<void> _displayTextInputDialog(BuildContext context) async {
    _selected = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('To do list'),
            content: TextField(
              onChanged: (value) {
                setState(() {
                  valueText = value;
                });
              },
              controller: _textFieldController,
              decoration: InputDecoration(hintText: "Enter information"),
            ),
            actions: <Widget>[
              FlatButton(
                color: Colors.red,
                textColor: Colors.white,
                child: Text('Clear'),
                onPressed: () {
                  Navigator.pop(context, null);
                },
              ),
              FlatButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text('Enter'),
                onPressed: () {
                  print(_textFieldController.text);
                  Navigator.pop(context, _textFieldController.text);
                },
              ),
            ],
          );
        });
    if (_selected != null) {
      Todo x = Todo(_selected, false);
      setState(() {
        // _selected = _selected;
        todo_list.add(x);
      });
    }
  }

  late String codeDialog;
  late String valueText;

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
          _displayTextInputDialog(context);
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
