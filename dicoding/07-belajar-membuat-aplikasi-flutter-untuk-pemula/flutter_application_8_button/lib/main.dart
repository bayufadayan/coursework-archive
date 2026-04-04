import 'package:flutter/material.dart';
import 'package:flutter_application_8_button/dropDownButton.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Belajar Button",
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.green),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Button'),
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: <Widget>[
              MyElevatedButton(),
              SizedBox(
                height: 16.0,
              ),
              MyTextButton(),
              SizedBox(
                height: 16.0,
              ),
              MyOutlineButton(),
              SizedBox(
                height: 16.0,
              ),
              MyIconButton(),
              SizedBox(
                height: 16.0,
              ),
              MyDropDownButton(),
            ],
          ),
        ],
      ),
    );
  }
}

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text("Ini Elevated Button"),
        const SizedBox(
          height: 4.0,
        ),
        ElevatedButton(onPressed: () {}, child: const Text('Tombol'))
      ],
    );
  }
}

class MyTextButton extends StatelessWidget {
  const MyTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text("Ini Text Button"),
        const SizedBox(
          height: 4.0,
        ),
        TextButton(
          child: const Text('Text Button'),
          onPressed: () {
            // Aksi ketika button diklik
          },
        ),
      ],
    );
  }
}

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text("Ini Outline Button"),
        const SizedBox(
          height: 4.0,
        ),
        OutlinedButton(
          child: const Text('Outline Button'),
          onPressed: () {
            // Aksi ketika button diklik
          },
        ),
      ],
    );
  }
}

class MyIconButton extends StatelessWidget {
  const MyIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text("Ini Icon Button"),
        const SizedBox(
          height: 4.0,
        ),
        IconButton(
          onPressed: () {},
          tooltip: "Ini Icon Button",
          icon: const Icon(Icons.ac_unit),
        ),
      ],
    );
  }
}
