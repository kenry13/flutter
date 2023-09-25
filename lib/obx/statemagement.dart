import 'package:flutter/material.dart';
import 'package:fluttergetx/obx/get%20builder/getbuilder.dart';

class StateManagement extends StatefulWidget {
  const StateManagement({super.key});

  @override
  State<StateManagement> createState() => _StateManagementState();
}

class _StateManagementState extends State<StateManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('State Management'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const GetBuilder(),
                  ),
                );
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Colors.yellow,
                ),
                child: const Center(
                  child: Text(
                    'Get Builder',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                color: Colors.yellow,
              ),
              child: const Center(
                child: Text(
                  'Obx',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                color: Colors.yellow,
              ),
              child: const Center(
                child: Text(
                  'SUM XY',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
