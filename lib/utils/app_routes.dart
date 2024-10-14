import 'package:flutter/material.dart';
import 'package:travel_app/screen/home/view/bottom_navigation.dart';
import 'package:travel_app/screen/home/view/home_screen.dart';
import 'package:travel_app/screen/onboard/view/onboard_screen.dart';
import 'package:travel_app/screen/signin/view/signing_screen.dart';
import 'package:travel_app/screen/signin/view/signup_screen.dart';
import 'package:travel_app/splash/view/splash_screen.dart';

Map<String,WidgetBuilder> app_routes = {
  '/':(context) => const SplashScreen(),
  'on':(context) => const OnboardScreen(),
  'home':(context) => const HomeScreen(),
  'signing':(context) => const SigninScreen(),
  'signup':(context) => const SignupScreen(),
  'bottom':(context) => const BottomNavigation(),
};