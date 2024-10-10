import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/screen/profile/controller/user_controller.dart';
import 'package:travel_app/utils/helper/fireauth_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ProfileController profileController = Get.put(ProfileController());

  @override
  void initState() {
    bool check = FireAuthHelper.helper.checkUser();
    if (check) {
      profileController.getUserData();
    }

    Timer(
      const Duration(seconds: 3),
          () {
        Get.offAllNamed(check ? 'home' : 'signing');
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(
        "https://www.creativehut.org/wp-content/uploads/2020/07/ultimate-guide-to-travel-photography.jpg",
        fit: BoxFit.cover,
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
      ),
    );
  }
}
