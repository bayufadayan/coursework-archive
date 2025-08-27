import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Import gambar'),
        ),
        body: Column(
          children: [
            const Text('Ini dari network / url'),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Google-flutter-logo.png/800px-Google-flutter-logo.png',
                width: 300,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text('Ini dari assets'),
            Image.asset(
              'images/Logo-abkom.png',
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}
