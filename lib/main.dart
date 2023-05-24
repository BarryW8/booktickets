import 'package:flutter/material.dart';

import 'screens/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 隐藏debug图标
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.white),
      home: const BottomBar(),
    );
  }
}
