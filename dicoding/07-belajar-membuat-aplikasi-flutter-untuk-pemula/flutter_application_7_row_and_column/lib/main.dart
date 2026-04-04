import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Kolom dan Baris'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.black38,
                  ),
                  Icon(Icons.thumb_up, color: Colors.black38),
                  Icon(Icons.thumb_down, color: Colors.black38),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: const <Widget>[
                  Text(
                    'Sebuah Judul',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Lorem ipsum dolor sit amet'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
