import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Padding Widget Lessons",
      home: MyWidget(),
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.green),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Padding'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: const Text('Ini Padding + Center'),
          )),
    );
  }
}
