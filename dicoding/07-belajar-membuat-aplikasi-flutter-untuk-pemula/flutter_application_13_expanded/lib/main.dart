import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: const Rainbow(),
    );
  }
}

class Rainbow extends StatelessWidget {
  const Rainbow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Expanded'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orange,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.indigo,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
