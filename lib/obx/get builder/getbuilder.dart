import 'package:flutter/material.dart';

class GetBuilder extends StatefulWidget {
  const GetBuilder({super.key});

  @override
  State<GetBuilder> createState() => _GetBuilderState();
}

class _GetBuilderState extends State<GetBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Get Builder'),
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
                  '0',
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
                  'Increase',
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
                  'Derease',
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
