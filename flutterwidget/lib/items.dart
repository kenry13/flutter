import 'package:flutter/material.dart';
import 'package:flutterwidget/todo/todojacket.dart';
import 'package:flutterwidget/todo/todopants.dart';
import 'package:flutterwidget/todo/todoshoes.dart';
import 'package:flutterwidget/todo/todotshirt.dart';
import 'package:flutterwidget/todo/todovarsity.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Items'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Icon(Icons.notifications_none),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TodoTshirt()));
              },
              icon: Image.network(
                'images/logotshirt.png',
                width: 30,
                height: 30,
              ),
              label: const Text(
                'T-Shirt',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 95),
                minimumSize: const Size(200, 60),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TodoVarsity()));
              },
              icon: Image.network(
                'images/logovarsity.png',
                width: 30,
                height: 30,
              ),
              label: const Text(
                'Varsity',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 95),
                minimumSize: const Size(200, 60),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TodoJacket()));
              },
              icon: Image.network(
                'images/logojacket.png',
                width: 30,
                height: 30,
              ),
              label: const Text(
                'Jacket',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 95),
                minimumSize: const Size(200, 60),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const TodoPants()));
              },
              icon: Image.network(
                'images/logopants.png',
                width: 30,
                height: 30,
              ),
              label: const Text(
                'Pants',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 95),
                minimumSize: const Size(200, 60),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const TodoShoes()));
              },
              icon: Image.network(
                'images/logoshoes.png',
                width: 30,
                height: 30,
              ),
              label: const Text(
                'Shoes',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 95),
                minimumSize: const Size(200, 60),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
