import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  static Color primaryColor = primary; // 主颜色
  static Color textColor = const Color(0xFF3b3b3b); // 文字颜色
  static Color bgColor = const Color(0xFFeeedf2); // 背景色
  static Color orangeColor = const Color(0xFF526799); // 通用橘色
  static TextStyle textStyle = TextStyle(
      fontSize: 16, color: textColor, fontWeight: FontWeight.w500); // 文本样式
  static TextStyle headLineStyle1 = TextStyle(
      fontSize: 26, color: textColor, fontWeight: FontWeight.bold); // 一级标题
  static TextStyle headLineStyle2 = TextStyle(
      fontSize: 21, color: textColor, fontWeight: FontWeight.bold); // 二级标题
  static TextStyle headLineStyle3 = TextStyle(
      fontSize: 17,
      color: Colors.grey.shade500,
      fontWeight: FontWeight.w500); // 三级标题
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14,
      color: Colors.grey.shade500,
      fontWeight: FontWeight.w500); // 四级标题
}
