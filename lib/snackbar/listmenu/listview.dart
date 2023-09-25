import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttergetx/controller/textfield_controller.dart';

class ListViewSatu extends StatefulWidget {
  const ListViewSatu({super.key});

  @override
  State<ListViewSatu> createState() => _ListViewSatuState();
}

class _ListViewSatuState extends State<ListViewSatu> {
  TextFieldController textFieldController = TextFieldController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("add name"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 32, left: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      label: Text("Masukkan nama"),
                    ),
                    onSubmitted: (isi) {
                      textFieldController.tambahSiswa(isi);
                    },
                  ),
                  Obx(() => ListView.builder(
                          shrinkWrap: true,
                          itemCount: textFieldController.dataSiswa.length,
                          itemBuilder: (context, index) => ListTile(
                              title:
                                  Text(textFieldController.dataSiswa[index])))
                      // Text(dialogController.dataSiswa[0])
                      ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
