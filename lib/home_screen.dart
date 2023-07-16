import 'package:flutter/material.dart';
import 'package:flutter_lecture_first/ch3/container_screen.dart';
import 'package:flutter_lecture_first/ch3/image_screen.dart';
import 'package:flutter_lecture_first/ch3/scaffold_screen.dart';
import 'package:flutter_lecture_first/ch3/text_screen.dart';
import 'package:flutter_lecture_first/ch4/button_screen.dart';
import 'package:flutter_lecture_first/ch4/gridview_screen.dart';
import 'package:flutter_lecture_first/ch4/listview_screen.dart';
import 'package:flutter_lecture_first/ch5/bottom_navigation_bar_screen.dart';
import 'package:flutter_lecture_first/ch5/tabbar_screen.dart';

import 'ch3/column_screen.dart';
import 'ch3/row_screen.dart';
import 'ch4/single_scroll_screen.dart';
import 'ch4/text_form_field_screen.dart';
import 'ch5/default_tab_controller_screen.dart';
import 'ch5/pageview_screen.dart';
import 'ch5/ui_exam.dart';
import 'ch6/route_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("홈"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            button(page: const ContainerScreen(), name: "container"),
            button(page: const ColumnScreen(), name: "column"),
            button(page: const RowScreen(), name: "row"),
            button(page: const ScaffoldScreen(), name: "scaffold"),
            button(page: const TextScreen(), name: "text"),
            button(page: const ImageScreen(), name: "image"),
            button(page: const ButtonScreen(), name: "button"),
            button(page: const TextFormFieldScreen(), name: "textFormField"),
            button(
                page: const SingleScrollScreen(), name: "singleScrollScreen"),
            button(page: const ListViewScreen(), name: "listViewScreen"),
            button(page: const GridViewScreen(), name: "gridViewScreen"),
            button(page: const PageViewScreen(), name: "pageViewScreen"),
            button(page: const TabBarScreen(), name: "tabBarScreen"),
            button(
                page: const DefaultTabControllerScreen(),
                name: "defaultTabControllerScreen"),
            button(page: const UiExamScreen(), name: 'UiExamScreen'),
            button(
                page: const BottomNavigationBarScreen(),
                name: 'BottomNavigationBarScreen'),
            button(page: const RouteScreen(), name: 'RouteScreen'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/first");
                },
                child: Text('RouteNamedScreen')),
          ],
        ),
      ),
    );
  }

  Widget button({required Widget page, required String name}) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return page;
              },
            ),
          );
        },
        child: Text(
          name,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
