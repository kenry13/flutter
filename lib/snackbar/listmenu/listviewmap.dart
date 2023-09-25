import 'package:flutter/material.dart';
import 'package:fluttergetx/controller/textfield_controller.dart';
import 'package:get/get.dart';
// import 'package:flutter/widgets.dart';

class DaftarArray extends StatefulWidget {
  const DaftarArray({super.key});

  @override
  State<DaftarArray> createState() => _DaftarArrayState();
}

class _DaftarArrayState extends State<DaftarArray> {
  TextEditingController key = TextEditingController();
  TextEditingController isi = TextEditingController();
  TextFieldController textFieldController = TextFieldController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("add mapel"),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: key,
              decoration: const InputDecoration(
                label: Text("Masukkan Key"),
              ),
            ),
            TextField(
              controller: isi,
              decoration: const InputDecoration(
                label: Text("Masukkan Isi"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                textFieldController.tambahMap(key.text, isi.text);
              },
              child: Text("Submit"),
            ),
            Obx(() => ListView.builder(
                shrinkWrap: true,
                itemCount: textFieldController.dataKey.length,
                itemBuilder: (context, index) {
                  String namaKey =
                      textFieldController.dataKey.keys.elementAt(index);
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${namaKey}"),
                      Text("${textFieldController.dataKey[namaKey]}")
                    ],
                  );
                })),
          ],
        ),
      ),
    );
  }
}
