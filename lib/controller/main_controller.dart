import 'package:get/get.dart';

class ObxController extends GetxController {
  int _x = 10;
  int get x => _x;

  RxInt _y = 0.obs;
  RxInt get y => _y;

  void incrementX() {
    _x++;
    update();
    print(_x);
  }

  void decrementY() {
    _x--;
    update();
    print(_x);
  }
}
