import 'package:flutter/material.dart';
import 'package:flutterwidget/display/displaypants.dart';

class TodoPants extends StatefulWidget {
  const TodoPants({super.key});

  @override
  State<TodoPants> createState() => _TodoPantstate();
}

class _TodoPantstate extends State<TodoPants> {
  String? _selectedOption1;
  String? _selectedOption2;
  String? _selectedOption3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('T-Shirt'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Icon(Icons.notifications_none),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Customs'),
            CheckboxListTile(
              title: const Text('Long'),
              value: _selectedOption1 == 'Custom : Long',
              onChanged: (value) {
                setState(() {
                  _selectedOption1 = value! ? 'Custom : Long' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Short'),
              value: _selectedOption1 == 'Custom : Short',
              onChanged: (value) {
                setState(() {
                  _selectedOption1 = value! ? 'Custom : Short' : null;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text('Colors'),
            CheckboxListTile(
              title: const Text('Black'),
              value: _selectedOption2 == 'Color : Black',
              onChanged: (value) {
                setState(() {
                  _selectedOption2 = value! ? 'Color : Black' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Navy'),
              value: _selectedOption2 == 'Color : Navy',
              onChanged: (value) {
                setState(() {
                  _selectedOption2 = value! ? 'Color : Navy' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Army'),
              value: _selectedOption2 == 'Color : Army',
              onChanged: (value) {
                setState(() {
                  _selectedOption2 = value! ? 'Color : Army' : null;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text('Size'),
            CheckboxListTile(
              title: const Text('28'),
              value: _selectedOption3 == 'Size : 28',
              onChanged: (value) {
                setState(() {
                  _selectedOption3 = value! ? 'Size : 28' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('29'),
              value: _selectedOption3 == 'Size : 29',
              onChanged: (value) {
                setState(() {
                  _selectedOption3 = value! ? 'Size : 29' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('30'),
              value: _selectedOption3 == 'Size : 30',
              onChanged: (value) {
                setState(() {
                  _selectedOption3 = value! ? 'Size : 30' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('31'),
              value: _selectedOption3 == 'Size : 31',
              onChanged: (value) {
                setState(() {
                  _selectedOption3 = value! ? 'Size : 31' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('32'),
              value: _selectedOption3 == 'Size : 32',
              onChanged: (value) {
                setState(() {
                  _selectedOption3 = value! ? 'Size : 32' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('33'),
              value: _selectedOption3 == 'Size : 33',
              onChanged: (value) {
                setState(() {
                  _selectedOption3 = value! ? 'Size : 33' : null;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_selectedOption1 != null &&
                    _selectedOption2 != null &&
                    _selectedOption3 != null) {
                  List<String> selectedOptions = [
                    _selectedOption1!,
                    _selectedOption2!,
                    _selectedOption3!
                  ];
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DisplayPants(selectedOptions),
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Warning'),
                        content:
                            const Text('Select all options before proceeding.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
