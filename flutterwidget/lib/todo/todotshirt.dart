import 'package:flutter/material.dart';
import 'package:flutterwidget/display/displaytshirt.dart';

class TodoTshirt extends StatefulWidget {
  const TodoTshirt({super.key});

  @override
  State<TodoTshirt> createState() => _TodoTshirtState();
}

class _TodoTshirtState extends State<TodoTshirt> {
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
              title: const Text('White'),
              value: _selectedOption2 == 'Color : White',
              onChanged: (value) {
                setState(() {
                  _selectedOption2 = value! ? 'Color : White' : null;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text('Size'),
            CheckboxListTile(
              title: const Text('M'),
              value: _selectedOption3 == 'Size : M',
              onChanged: (value) {
                setState(() {
                  _selectedOption3 = value! ? 'Size : M' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('L'),
              value: _selectedOption3 == 'Size : L',
              onChanged: (value) {
                setState(() {
                  _selectedOption3 = value! ? 'Size : L' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('XL'),
              value: _selectedOption3 == 'Size : XL',
              onChanged: (value) {
                setState(() {
                  _selectedOption3 = value! ? 'Size : XL' : null;
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
                      builder: (context) => DisplayTshirt(selectedOptions),
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
