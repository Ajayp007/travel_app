import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/screen/onboard/controller/onboard_controller.dart';
import 'package:travel_app/screen/onboard/model/onboard_model.dart';
import 'package:travel_app/utils/widgets/selected_colors.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  Widget dotIndicator(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      margin: const EdgeInsets.only(right: 6),
      width: 30,
      height: 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: index == controller.currentIndex.value
            ? Colors.white
            : Colors.white54,
      ),
    );
  }

  OnBoardController controller = Get.put(OnBoardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Stack(
          children: [
            PageView.builder(
              itemCount: onboarding.length,
              onPageChanged: (value) {
                controller.currentIndex.value = value;
              },
              itemBuilder: (context, index) {
                return Image.network(
                  onboarding[index].image,
                  fit: BoxFit.cover,
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          Get.offAndToNamed('home');
                        },
                        child: Visibility(
                          visible: onboarding.length - 1 !=
                                  controller.currentIndex.value
                              ? true
                              : false,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 7,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white54,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              "Skip",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            onboarding[controller.currentIndex.value].name,
                            style: const TextStyle(
                              fontSize: 70,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "We Traveling are ready to help you on\nvacation around India",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 245,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onboarding.length,
                        dotIndicator,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(36),
                        color: Colors.white,
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.toNamed('signing');
                              },
                              child: Container(
                                height: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(0, 5),
                                      spreadRadius: 15,
                                      blurRadius: 15,
                                    ),
                                  ],
                                  color: kButtonColor,
                                ),
                                child: const Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Let's Get Started",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 25,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed('signup');
                              },
                              child: const Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Don't have account? ",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Sign Up",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
