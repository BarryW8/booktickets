import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            // padding: const EdgeInsets.only(left: 20, right: 20), // 设置内边距
            padding: const EdgeInsets.symmetric(horizontal: 20), // 设置内边距
            child: Column(
              children: [
                const Gap(40), // 增加顶部留白，等价于 SizedBox(height: 40)
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // 主轴对齐（默认start）
                  children: [
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // 横轴对齐（默认center）
                      children: [
                        Text(
                          "Good morning",
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5), // 增加间隙
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    // 图片容器（必须要设置宽度和高度，否则无法显示）
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          // 装饰器
                          borderRadius: BorderRadius.circular(10), // 圆角边框
                          image: const DecorationImage(
                              // fit: BoxFit.fitHeight, // 设置图片平铺方法
                              image: AssetImage("assets/images/visitor.png"))),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Colors.grey.shade500,
                      ),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                      child: Text(
                        "View all",
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ),
                      onTap: () {
                        print("Tapped View all");
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          /* 机票滚动 */
          SingleChildScrollView(
            // 滚动组件
            scrollDirection: Axis.horizontal, // 水平滚动
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              // 机票组件
              children: ticketList
                  .map((e) => TicketView(
                        ticket: e,
                      ))
                  .toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: Styles.headLineStyle2,
                ),
                InkWell(
                  child: Text(
                    "View all",
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                  onTap: () {
                    print("Tapped View all");
                  },
                ),
              ],
            ),
          ),
          const Gap(15),
          /* 酒店滚动 */
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                // 酒店组件
                children: hotelList
                    .map((e) => HotelScreen(
                          hotel: e,
                        ))
                    .toList(),
              )),
          const Gap(25),
        ],
      ),
    );
  }
}
