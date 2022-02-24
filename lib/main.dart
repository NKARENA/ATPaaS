import 'package:flutter/material.dart';
import 'AbTxt.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(backgroundColor: Colors.pinkAccent, title: AbTxt()),
          body: Container(
              child: Column(
            children: [
              Text("Login Here", style: TextStyle(fontSize: 30)),
              Card(
                  child: TextField(
                decoration: InputDecoration(labelText: "Username"),
                controller: usernameController,
              )),
              Card(
                  child: TextField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: "Password",
                ),
                controller: passwordController,
              )),
              RaisedButton(
                child: Text("Login",
                    style: TextStyle(fontWeight: FontWeight.w900)),
                onPressed: () {
                  print(usernameController.text);
                  print(passwordController.text);
                },
                // textColor: Colors.white,
                color: Colors.pink[200],
              )
            ],
          ))),
    );
  }
}
