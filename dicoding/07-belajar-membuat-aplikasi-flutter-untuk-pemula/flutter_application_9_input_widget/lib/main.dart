import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _name = '';
  final TextEditingController _controller = TextEditingController();
  bool lightOn = false;
  String? language;
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false, primarySwatch: Colors.green),
      supportedLocales: const [
        Locale('en', 'US'),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Input"),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ini pakai onChanged'),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Write your name here...',
                  labelText: 'Your Name',
                ),
                onChanged: (String value) {
                  setState(() {
                    _name = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_name.isNotEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text('Hello, $_name'),
                        );
                      },
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Name cannot be empty!")),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
              const SizedBox(height: 30),
              const Text('Ini pakai controller'),
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Write your name here...',
                  labelText: 'Your Name',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_controller.text.isNotEmpty) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text('Hello, ${_controller.text}'),
                        );
                      },
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Name cannot be empty!")),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
              Switch(
                  value: lightOn,
                  onChanged: (bool value) {
                    setState(() {
                      lightOn = value;
                    });

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(lightOn ? 'Light On' : 'Light Off'),
                      duration: const Duration(seconds: 2),
                    ));
                  }),
              const Text('Ini Radio'),
              Column(
                children: [
                  ListTile(
                    leading: Radio<String>(
                      value: 'Dart',
                      groupValue: language,
                      onChanged: (String? value) {
                        setState(() {
                          language = value;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('$language selected'),
                              duration: const Duration(seconds: 1),
                            ),
                          );
                        });
                      },
                    ),
                    title: const Text('Dart'),
                  ),
                  ListTile(
                    leading: Radio<String>(
                      value: 'Kotlin',
                      groupValue: language,
                      onChanged: (String? value) {
                        setState(() {
                          language = value;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('$language selected'),
                              duration: const Duration(seconds: 1),
                            ),
                          );
                        });
                      },
                    ),
                    title: const Text('Kotlin'),
                  ),
                  ListTile(
                    leading: Radio<String>(
                      value: 'Swift',
                      groupValue: language,
                      onChanged: (String? value) {
                        setState(() {
                          language = value;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('$language selected'),
                              duration: const Duration(seconds: 1),
                            ),
                          );
                        });
                      },
                    ),
                    title: const Text('Swift'),
                  ),
                ],
              ),
              Text('Ini checkbox'),
              ListTile(
                leading: Checkbox(value: agree, onChanged: (bool? value){
                  setState(() {
                    agree = value!;
                  });
                }),
                title: const Text('Agree / Disagree'),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
