import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttergetx/controller/textfield_controller.dart';

class Matpel extends StatefulWidget {
  const Matpel({super.key});

  @override
  State<Matpel> createState() => _MatpelState();
}

class _MatpelState extends State<Matpel> {
  TextFieldController dialogController = TextFieldController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sekolah"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    width: double.infinity,
                    height: 240,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        TextButton(
                            onPressed: () => Get.toNamed("/textfield"),
                            child: const Text("Textfield")),
                        TextButton(
                            onPressed: () => Get.toNamed("/tambah-kurang"),
                            child: const Text("Tambah Kurang")),
                        TextButton(
                            onPressed: () => Get.toNamed("/list-view"),
                            child: const Text("Add Name ")),
                        TextButton(
                            onPressed: () => Get.toNamed("/list-view-map"),
                            child: const Text("Add Mapel")),
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
              width: 334,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.lightBlue.shade50,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "XII RPL 2",
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(() => Text(
                          'Jumlah Siswa : ${dialogController.angka.value.toString()}')),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () => dialogController.addAngka(),
                              icon: const Icon(Icons.add)),
                          Obx(() =>
                              Text(dialogController.angka.value.toString())),
                          IconButton(
                              onPressed: () => dialogController.removeAngka(),
                              icon: const Icon(Icons.remove)),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => Text(dialogController.tog.value == false
                            ? "close"
                            : "open"),
                      ),
                      Obx(
                        () => Switch(
                          value: dialogController.tog.value,
                          activeColor: dialogController.tog.value == true
                              ? Colors.green
                              : Colors.grey,
                          onChanged: (value) {
                            dialogController.setToggle(value);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 334,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.lightBlue.shade50,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Nama Siswa",
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => ListView.builder(
                      shrinkWrap: true,
                      itemCount: dialogController.dataSiswa.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(dialogController.dataSiswa[index]),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 334,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.lightBlue.shade50,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Mata Pelajaran",
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => ListView.builder(
                      shrinkWrap: true,
                      itemCount: dialogController.dataKey.length,
                      itemBuilder: (BuildContext context, int index) {
                        String namaKey =
                            dialogController.dataKey.keys.elementAt(index);
                        return Row(
                          children: [
                            Text("${namaKey}"),
                            const SizedBox(
                              width: 32,
                            ),
                            Text("${dialogController.dataKey[namaKey]}")
                          ],
                        );
                      },
                    ),
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
