import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class CounterController extends GetxController {
  RxInt bilangan = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar('Warning', 'Loba Teuing Cangkel');
    } else {
      bilangan.value++;
    }
  }

  void kurangSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar('Warning', 'Minus!!');
    } else {
      bilangan.value--;
    }
  }
}
