import 'package:get/get.dart';

class MyController extends GetxController {
  /// static 키워드는 생성자 없이 사용 가능
  /// 힙(heap) 메모리에 사용
  static MyController get to => Get.find<MyController>();

  static MyController toto() {
    return Get.find<MyController>();
  }

  RxInt count = 0.obs;
  RxString name = "".obs;

  void countUp() {
    count.value++;
    // update();
  }

  void countDown() {
    count.value--;
    update();
  }

  void countChange(int value) {
    count.value = value;
  }

  void countReset() {
    count.value = 0;
  }
}
