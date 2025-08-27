import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDropDownButton extends StatefulWidget {
  const MyDropDownButton({super.key});

  @override
  State<MyDropDownButton> createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Ini Dropdown'),
        SizedBox(
          height: 10.0,
        ),
        DropdownButton<String>(
          items: const <DropdownMenuItem<String>>[
            DropdownMenuItem<String>(
              value: 'Dart',
              child: Text('Dart'),
            ),
            DropdownMenuItem<String>(
              value: 'Kotlin',
              child: Text('Kotlin'),
            ),
            DropdownMenuItem<String>(
              value: 'Swift',
              child: Text('Swift'),
            ),
          ],
          value: language,
          hint: Text('Select Language'),
          onChanged: (String? value) {
            setState(() {
              language = value;
            });
          },
        )
      ],
    );
  }
}
