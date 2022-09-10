import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MainController extends GetxController{
  var count  = 0.obs;

  IncreaseValue(){
    count++;
    // refresh(); Method 2
  }
  DecreaseValue(){
    count--;
    // refresh(); Method 2
  }
  ChangeTheme(){
    Get.changeTheme(Get.isDarkMode? ThemeData.light():ThemeData.dark());
    // refresh(); Method 2
  }
}