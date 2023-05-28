import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(12),
          vertical: AppLayout.getHeight(12)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10))),
      child: Row(
        children: [
          Icon(
            icon,
            color: Styles.textColor,
          ),
          Gap(AppLayout.getWidth(10)),
          Text(
            text,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}
