import 'package:get/get.dart';

class OnBoardController extends GetxController
{
  RxInt currentIndex = 0.obs;

  void changeCurrentIndex(int ind)
  {
    currentIndex.value = ind;
  }

}