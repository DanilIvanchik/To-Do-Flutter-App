import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => ToDoPageState();
}

class ToDoPageState extends State<ToDoPage> {
  TextEditingController _myController = TextEditingController();

  String greetengMessage() {
    return _myController.text;
  }

  greetTheUser() {
    setState(() {
      print(_myController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(greetengMessage()),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Enter message:"),
              controller: _myController,
            ),
            ElevatedButton(onPressed: greetTheUser, child: Text("Tap"))
          ],
        )),
      ),
    );
  }
}
