import 'package:get/get.dart';

class DetailController extends GetxController
{
  RxInt pageIndex = 0.obs;

  void changePage(int index)
  {
    pageIndex.value = index;
  }
}