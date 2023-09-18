import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TextFieldController extends GetxController {
  RxString textName = RxString("");
  RxBool tog = RxBool(false);
  RxInt angka = RxInt(0);

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
}
