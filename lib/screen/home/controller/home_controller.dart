import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxInt currentPage = 0.obs;

  void changeSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}
