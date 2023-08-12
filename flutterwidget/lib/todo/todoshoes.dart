import 'package:flutter/material.dart';
import 'package:flutterwidget/display/displayshoes.dart';

class TodoShoes extends StatefulWidget {
  const TodoShoes({super.key});

  @override
  State<TodoShoes> createState() => _TodoShoesstate();
}

class _TodoShoesstate extends State<TodoShoes> {
  String? _selectedOption1;
  String? _selectedOption2;

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
            const Text('Colors'),
            CheckboxListTile(
              title: const Text('Black'),
              value: _selectedOption1 == 'Color : Black',
              onChanged: (value) {
                setState(() {
                  _selectedOption1 = value! ? 'Color : Black' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('White'),
              value: _selectedOption1 == 'Color : White',
              onChanged: (value) {
                setState(() {
                  _selectedOption1 = value! ? 'Color : White' : null;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text('Size'),
            CheckboxListTile(
              title: const Text('28'),
              value: _selectedOption2 == 'Size : 28',
              onChanged: (value) {
                setState(() {
                  _selectedOption2 = value! ? 'Size : 28' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('29'),
              value: _selectedOption2 == 'Size : 29',
              onChanged: (value) {
                setState(() {
                  _selectedOption2 = value! ? 'Size : 29' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('30'),
              value: _selectedOption2 == 'Size : 30',
              onChanged: (value) {
                setState(() {
                  _selectedOption2 = value! ? 'Size : 30' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('31'),
              value: _selectedOption2 == 'Size : 31',
              onChanged: (value) {
                setState(() {
                  _selectedOption2 = value! ? 'Size : 31' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('32'),
              value: _selectedOption2 == 'Size : 32',
              onChanged: (value) {
                setState(() {
                  _selectedOption2 = value! ? 'Size : 32' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('33'),
              value: _selectedOption2 == 'Size : 33',
              onChanged: (value) {
                setState(() {
                  _selectedOption2 = value! ? 'Size : 33' : null;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_selectedOption1 != null && _selectedOption2 != null) {
                  List<String> selectedOptions = [
                    _selectedOption1!,
                    _selectedOption2!
                  ];
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DisplayShoes(selectedOptions),
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
