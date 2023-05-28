import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widget/double_text_widget.dart';
import 'package:booktickets/widget/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(10)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "What are",
              style: Styles.headLineStyle1
                  .copyWith(fontSize: AppLayout.getWidth(30)),
            ),
            Text(
              "you looking for?",
              style: Styles.headLineStyle1
                  .copyWith(fontSize: AppLayout.getWidth(30)),
            ),
            Gap(AppLayout.getHeight(20)),
            // 自适应盒子（防止组件越界）
            FittedBox(
              child: Container(
                padding: const EdgeInsets.all(3.5),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(50)),
                    color: const Color(0xFFF4F6FD)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width * .44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(7)),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(
                                  AppLayout.getHeight(50)))), // 水平左侧圆角
                      child: Center(
                        child: Text(
                          "Airline Tickets",
                          style: Styles.headLineStyle4,
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * .44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(7)), // 水平右侧圆角
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(AppLayout.getHeight(50)))),
                      child: Center(
                        child: Text(
                          "Hotels",
                          style: Styles.headLineStyle4,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Gap(AppLayout.getHeight(25)),
            const IconTextWidget(
                icon: Icons.flight_takeoff_rounded, text: "Departure"),
            Gap(AppLayout.getHeight(20)),
            const IconTextWidget(
                icon: Icons.flight_land_rounded, text: "Arrival"),
            Gap(AppLayout.getHeight(25)),
            Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(18),
                    vertical: AppLayout.getHeight(15)),
                decoration: BoxDecoration(
                    color: const Color(0xD91130CE),
                    borderRadius:
                        BorderRadius.circular(AppLayout.getWidth(10))),
                child: Center(
                  child: Text(
                    "find tickets",
                    style: Styles.textStyle.copyWith(color: Colors.white),
                  ),
                )),
            Gap(AppLayout.getHeight(40)),
            const DoubleTextWidget(
                bigText: "Upcoming Flights", smallText: "View all"),
            Gap(AppLayout.getHeight(15)),
            /* 类瀑布流布局 */
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 左侧容器
                Container(
                  width: size.width * 0.42,
                  height: AppLayout.getHeight(415),
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(15),
                      vertical: AppLayout.getHeight(15)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 1,
                            spreadRadius: 1)
                      ]),
                  child: Column(
                    children: [
                      // 上边的图片
                      Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/visitor.png")),
                        ),
                      ),
                      Gap(AppLayout.getHeight(12)),
                      // 下边的文字
                      Text(
                        "20% discount on business class tickets form Airline On International",
                        style: Styles.headLineStyle3.copyWith(fontSize: 19),
                      )
                    ],
                  ),
                ),
                // 右侧
                Column(
                  children: [
                    // 上面的容器
                    Stack(
                      children: [
                        // 容器本身
                        Container(
                          width: size.width * 0.44,
                          height: AppLayout.getHeight(190),
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getWidth(15),
                              vertical: AppLayout.getHeight(15)),
                          decoration: BoxDecoration(
                              color: const Color(0xFF3AB8B8),
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(18))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nfor survey",
                                style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Gap(10),
                              Text(
                                "Take the survey about our services and get a discount",
                                style: Styles.headLineStyle3
                                    .copyWith(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        // 圆圈图案（使用位置组件，固定相对位置）
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(30)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, // 形状
                                border: Border.all(
                                    width: 18,
                                    color: const Color(0xFF189999)), // 边框
                                color: Colors.transparent), // 中间透明
                          ),
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(12)),
                    // 下面的容器
                    Container(
                      width: size.width * 0.44,
                      height: AppLayout.getHeight(210),
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(15),
                          vertical: AppLayout.getHeight(15)),
                      decoration: BoxDecoration(
                          color: const Color(0xFFEC6545),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18))),
                      child: Column(
                        children: [
                          Text(
                            "Take love",
                            style: Styles.headLineStyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Gap(AppLayout.getHeight(5)),
                          // 富文本组件
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: '😍', style: TextStyle(fontSize: 38)),
                            TextSpan(
                                text: '🥰', style: TextStyle(fontSize: 50)),
                            TextSpan(
                                text: '😘', style: TextStyle(fontSize: 38)),
                          ]))
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ]),
    );
  }
}
