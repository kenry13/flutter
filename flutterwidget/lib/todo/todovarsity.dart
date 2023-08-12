import 'package:flutter/material.dart';
import 'package:flutterwidget/display/displayvarsity.dart';

class TodoVarsity extends StatefulWidget {
  const TodoVarsity({super.key});

  @override
  State<TodoVarsity> createState() => _TodoVarsitystate();
}

class _TodoVarsitystate extends State<TodoVarsity> {
  String? _selectedOption1;
  String? _selectedOption2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Varsity'),
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
              title: const Text('Blue + White'),
              value: _selectedOption1 == 'Color : Blue + White',
              onChanged: (value) {
                setState(() {
                  _selectedOption1 = value! ? 'Color : Blue + White' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Brown + White'),
              value: _selectedOption1 == 'Color : Brown + White',
              onChanged: (value) {
                setState(() {
                  _selectedOption1 = value! ? 'Color : Brown + White' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Pink + White'),
              value: _selectedOption1 == 'Color : Pink + White',
              onChanged: (value) {
                setState(() {
                  _selectedOption1 = value! ? 'Color : Pink + White' : null;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text('Size'),
            CheckboxListTile(
              title: const Text('L'),
              value: _selectedOption2 == 'Size : L',
              onChanged: (value) {
                setState(() {
                  _selectedOption2 = value! ? 'Size : L' : null;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('XL'),
              value: _selectedOption2 == 'Size : XL',
              onChanged: (value) {
                setState(() {
                  _selectedOption2 = value! ? 'Size : XL' : null;
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
                      builder: (context) => DisplayVarsity(selectedOptions),
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
