import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttergetx/controller/textfield_controller.dart';
import 'package:get/get.dart';

class TambahKurang extends StatelessWidget {
  const TambahKurang({super.key});

  @override
  Widget build(BuildContext context) {
    TextFieldController dialogController = TextFieldController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('increase'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24),
          )
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () => dialogController.addAngka(),
                icon: const Icon(Icons.add)),
            Obx(() => Text(dialogController.angka.value.toString())),
            IconButton(
                onPressed: () => dialogController.removeAngka(),
                icon: const Icon(Icons.remove)),
          ],
        ),
      ),
    );
  }
}
