import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HasilPage extends StatelessWidget {
  const HasilPage({super.key});

  @override
  Widget build(BuildContext context) {
    var isiArgument = Get.arguments;
    return Scaffold(
      appBar: AppBar(),
      body: Text("Data ${isiArgument}"),
    );
  }
}
