import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AppLayout {
  // 当前布局尺寸
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  // 屏幕宽度
  static getScreenWeight() {
    return Get.width;
  }

  // 屏幕高度
  static getScreenHeight() {
    return Get.height;
  }

  // 计算宽度（解决溢出问题）
  static getWidth(double pixels) {
    double x = getScreenWeight() / pixels; // 844/200=4.22
    return getScreenWeight() / x; // 844/4.22=200
  }

  // 计算高度（解决溢出问题）
  static getHeight(double pixels) {
    double x = getScreenHeight() / pixels; // 844/200=4.22
    return getScreenHeight() / x; // 844/4.22=200
  }
}
