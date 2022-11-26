import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blue.shade900,
          body: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('img/Nine.jpg'),
                ),
              ),
              Text(
                "TUKSAPORN TUBKERD",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
                width: 250,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blue.shade900,
                    ),
                    title: Text("080 501 0008", style: TextStyle(fontSize: 20)),
                  )),
              Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.blue.shade900,
                    ),
                    title: Text("nxne2307@gmail.com",
                        style: TextStyle(fontSize: 20)),
                  )),
              Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.language,
                      color: Colors.blue.shade900,
                    ),
                    title: Text("github.com/spnaay23",
                        style: TextStyle(fontSize: 20)),
                  ))
            ],
          ))),
    );
  }
}
