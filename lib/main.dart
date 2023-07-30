import 'package:flutter/material.dart';
import 'package:flutter_lecture_first/ch6/named_route/route_named_third_screen.dart';
import 'package:flutter_lecture_first/ch8/my_controller.dart';
import 'package:flutter_lecture_first/home_screen.dart';
import 'package:get/get.dart';

import 'ch6/named_route/route_named_screen.dart';
import 'ch6/named_route/route_named_second_screen.dart';

/// main 함수
/// 어플리케이션이 시작하는 위치
void main() {

  /// MyController는 앱이 실행하는 동안 계속 유지/살아 있음
  Get.put(MyController(), permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomeScreen(),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        "/first": (context) => const RouteNamedScreen(),
        "/second": (context) => const RouteNamedSecondScreen(),
        "/third": (context) => const RouteNamedThirdScreen(),
      },
    );
  }
}
