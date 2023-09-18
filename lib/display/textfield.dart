import 'package:flutter/material.dart';
import 'package:fluttergetx/hasilpage.dart';
import 'package:get/get.dart';

import 'package:fluttergetx/controller/textfield_controller.dart';

class FormTextField extends StatefulWidget {
  const FormTextField({super.key});

  @override
  State<FormTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  @override
  Widget build(BuildContext context) {
    TextFieldController textFieldController = TextFieldController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    width: double.infinity,
                    height: 256,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        TextButton(
                            onPressed: () => Get.toNamed("/state"),
                            child: const Text("State")),
                        TextButton(
                            onPressed: () => Get.toNamed("/tambah-kurang"),
                            child: const Text("Tambah Kurang")),
                      ],
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.menu),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 32, right: 32),
              child: TextField(
                controller: textFieldController.editingController,
                decoration: const InputDecoration(hintText: 'Teks'),
                onSubmitted: (isi) {
                  Get.snackbar("seele", textFieldController.updateName(isi));
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() => Text(textFieldController.textName.value)),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 32, right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => Text(textFieldController.tog.value == false
                        ? "close"
                        : "open"),
                  ),
                  Obx(() => Switch(
                      value: textFieldController.tog.value,
                      activeColor: textFieldController.tog.value == true
                          ? Colors.green
                          : Colors.grey,
                      onChanged: (value) {
                        textFieldController.setToggle(value);
                      }))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
