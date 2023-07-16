import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lecture_first/ch3/container_screen.dart';
import 'package:flutter_lecture_first/ch3/row_screen.dart';
import 'package:flutter_lecture_first/ch6/named_route/route_named_third_screen.dart';
import 'package:flutter_lecture_first/home_screen.dart';

import 'ch3/column_screen.dart';
import 'ch6/named_route/route_named_screen.dart';
import 'ch6/named_route/route_named_second_screen.dart';
import 'ch6/route_screen.dart';

/// main 함수
/// 어플리케이션이 시작하는 위치
void main() {
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
