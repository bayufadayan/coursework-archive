import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyContainer(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: false,
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
      ),
      body: Container(
        child: Center(
          child: Text(
            'Hi',
            style: TextStyle(fontSize: 40),
          ),
        ),
        height: 100,
        width: 100,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.rectangle,
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(3, 6),
              blurRadius: 10,
            ),
          ],
          border: Border.all(color: Colors.blue, width: 3),
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}
