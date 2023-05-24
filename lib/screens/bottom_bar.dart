import 'package:booktickets/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0; // 当前选中的导航栏索引
  // 导航栏对应的页面内容
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Text("Search"),
    const Text("Ticket"),
    const Text("Profile")
  ];

  // 点击导航栏按钮后修改索引
  void _onItemTapped(int index) {
    // print('Tapped index is ${index}'); // 使用花括号会自动将变量转换成字符串，等价于 index.toString()
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 标题
      // appBar: AppBar(
      //   title: const Text("My tickets"),
      //   backgroundColor: Colors.blue,
      // ),
      // 页面内容
      body: Center(
        child: _widgetOptions[_selectedIndex], // 根据导航栏动态变化
      ),
      // 底部导航栏
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10, // 组件层级
        currentIndex: _selectedIndex, // 当前选中的索引
        showSelectedLabels: false, // 选中时是否显示label
        showUnselectedLabels: false, // 未选中时是否显示label
        selectedItemColor: Styles.primaryColor, // 选中的颜色
        unselectedItemColor: const Color(0xFF526480), // 未选中的颜色
        type: BottomNavigationBarType.fixed, // 固定按钮位置，默认放大选中的按钮
        items: const [
          // BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"), // label为必传参数
          // BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          // BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket), label: "Ticket"),
          // BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"), // label为必传参数
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Ticket"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile")
        ],
        onTap: _onItemTapped, // 按钮点击事件
      ),
    );
  }
}
