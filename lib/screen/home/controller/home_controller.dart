import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomeController extends GetxController
{
  RxInt selectedIndex = 0.obs;



  void changeSelectedIndex(int index)
  {
    selectedIndex.value = index;
  }

  void changeIcons()
  {
  }

}