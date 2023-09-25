import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TextFieldController extends GetxController {
  static final TextFieldController _instance = TextFieldController._internal();

  TextFieldController._internal();

  factory TextFieldController() {
    return _instance;
  }

  RxString textName = RxString("");
  RxBool tog = RxBool(false);
  RxInt angka = RxInt(0);
  RxList dataSiswa = RxList([]);
  RxMap dataKey = RxMap({});

  TextEditingController editingController = TextEditingController();

  updateName(String name) {
    textName.value = name;
    return name;
  }

  void setToggle(bool toggle) {
    tog(toggle);
  }

  void addAngka() {
    angka.value++;
  }

  void removeAngka() {
    angka.value--;
  }

  void tambahSiswa(String nama) {
    dataSiswa.add(nama);
  }

  void tambahMap(String key, String nama) {
    dataKey["${key}"] = nama;
  }
}
