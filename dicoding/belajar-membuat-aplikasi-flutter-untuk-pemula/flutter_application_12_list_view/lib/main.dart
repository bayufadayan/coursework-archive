import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Belajar List View",
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.green),
      home: const ScrollingScreen(),
    );
  }
}

class ScrollingScreen extends StatelessWidget {
  const ScrollingScreen({super.key});

  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar List View"),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: const TextStyle(fontSize: 50),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemCount: numberList.length,
      ),
    );
  }
}

// List Viwe biasa
// ListView(
//               children: numberList.map((number) {
//                 return Container(
//                   height: 250,
//                   decoration: BoxDecoration(
//                     color: Colors.grey,
//                     border: Border.all(color: Colors.black),
//                   ),
//                   child: Center(
//                     child: Text(
//                       '$number',
//                       style: const TextStyle(fontSize: 50),
//                     ),
//                   ),
//                 );
//               }).toList(),

// ListView.builder(
//           itemCount: numberList.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Container(
//               height: 250,
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//                 border: Border.all(color: Colors.black),
//               ),
//               child: Center(
//                 child: Text(
//                   '${numberList[index]}',
//                   style: const TextStyle(fontSize: 50),
//                 ),
//               ),
//             );
//           },
//         ));