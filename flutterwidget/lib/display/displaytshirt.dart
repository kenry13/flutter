import 'package:flutter/material.dart';
import 'package:flutterwidget/items.dart';

class DisplayTshirt extends StatelessWidget {
  final List<String> selectedOptions;

  const DisplayTshirt(this.selectedOptions);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Thank you for your order'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.check,
                  color: Colors.green,
                  size: 36,
                ),
                Expanded(
                  child: Text(
                    'Order Succes',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: Colors.green),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Item :',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'T-Shirt',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Note :',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            for (String option in selectedOptions)
              Text(option, style: const TextStyle(fontSize: 16)),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Items()));
              },
              icon: const Icon(
                Icons.home,
                size: 24,
              ),
              label: const Text(
                'Back to home',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                minimumSize: const Size(200, 60),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
