import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.green,
        fontFamily: 'Gatau'
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Font'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Column(
              children: [
                Text("di bawah ini custom font"),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Custom Font',
                  style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Ini udh jadu custom tapi udh jadi default text nya')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
