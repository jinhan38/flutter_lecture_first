import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // SingleTickerProviderStateMixin
    // Single = 1개
    // Ticker = frame 변경할 때 마다 체크
    // ProviderState = 상태를 제공한다.
    // Mixin = mixin 클래스(수정자)
    // Flutter 의 frame은 초당 최대 60번
    // -> 1초에 최대 60번 화면 업데이트 가능
    tabController = TabController(length: 8, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TabBarScreen"),
      ),
      body: _tabBar(),
    );
  }

  Widget _tabBar() {
    return TabBar(
      controller: tabController,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      labelStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 14,
      ),
      overlayColor: MaterialStateProperty.all(
        Colors.blue.shade100,
        // Colors.transparent,
      ),
      splashBorderRadius: BorderRadius.circular(20),
      indicatorWeight: 5,
      indicatorColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.label,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      // indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
      labelPadding: const EdgeInsets.symmetric(horizontal: 20),
      // indicator: BoxDecoration(
      //   color: Colors.green,
      //   borderRadius: BorderRadius.circular(20),
      //   border: Border.all(
      //     color: Colors.orange,
      //     width: 10,
      //   )
      // ),
      isScrollable: true,
      tabs: const [
        // Tab(text: "바지", height: 100),
        // Tab(text: "바지", height: 100),
        // Tab(text: "바지", height: 100),
        // Tab(text: "바지", height: 100),
        // Tab(text: "바지", height: 100),
        // Tab(text: "바지", height: 100),
        // Tab(text: "바지", height: 100),
        // Tab(text: "바지", height: 100),
        Tab(text: "바지"),
        Tab(text: "상의"),
        Tab(text: "아우터"),
        Tab(text: "가방"),
        Tab(text: "모자"),
        Tab(text: "시계"),
        Tab(text: "원피스"),
        Tab(text: "신발"),
      ],
    );
  }
}
