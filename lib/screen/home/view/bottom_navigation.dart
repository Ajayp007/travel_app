import 'package:dot_curved_bottom_nav/dot_curved_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:travel_app/screen/home/controller/home_controller.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  ScrollController scrollController = ScrollController();
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () =>  Scaffold(
        bottomNavigationBar: DotCurvedBottomNav(
          scrollController: scrollController,
          hideOnScroll: true,
          indicatorColor: Colors.blue,
          backgroundColor: Colors.black,
          animationDuration: const Duration(milliseconds: 300),
          animationCurve: Curves.ease,
          selectedIndex: controller.currentPage.value,
          indicatorSize: 5,
          borderRadius: 25,
          height: 70,
          onTap: (value) {
            controller.currentPage.value = value;
          },
          items: [
            Icon(
              size: 30,
              Iconsax.home,
              color:
                  controller.currentPage.value == 0 ? Colors.blue : Colors.white,
            ),
            // Icon(
            //   size: 30,
            //   Iconsax.search_normal,
            //   color:
            //       controller.currentPage.value == 1 ? Colors.blue : Colors.white,
            // ),
            // Icon(
            //   size: 30,
            //   Icons.confirmation_number_outlined,
            //   color:
            //       controller.currentPage.value == 2 ? Colors.blue : Colors.white,
            // ),
            Icon(
              size: 30,
              Icons.bookmark_outline,
              color:
                  controller.currentPage.value == 1 ? Colors.blue : Colors.white,
            ),
            Icon(
              size: 30,
              Icons.person_outline,
              color:
                  controller.currentPage.value == 2 ? Colors.blue : Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
