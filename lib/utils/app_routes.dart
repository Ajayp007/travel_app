import 'package:flutter/material.dart';
import 'package:travel_app/screen/home/view/home_screen.dart';
import 'package:travel_app/screen/onboard/view/onboard_screen.dart';

Map<String,WidgetBuilder> app_routes = {
  '/':(context) => const OnboardScreen(),
  'home':(context) => const HomeScreen(),
};