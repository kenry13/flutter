import 'package:flutter/material.dart';
import 'package:fluttergetx/display/statemagement.dart';
import 'package:fluttergetx/display/textfield.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'images/logogetx.png',
                  width: 100,
                ),
                const Text(
                  'GetX',
                  style: TextStyle(
                    fontSize: 50, // Ukuran teks
                    fontWeight: FontWeight.bold, // Ketebalan teks
                    color: Colors.purple, // Warna teks
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const StateManagement(),
                      ),
                    );
                  },
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        'Obx \n Get Builder',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const FormTextField(),
                      ),
                    );
                  },
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    color: Colors.yellow,
                    child: const Center(
                      child: Text(
                        'Snackbar, Dialog, BottomSheet',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      'Named \n Navigation',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      'Depedency \n Management',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
