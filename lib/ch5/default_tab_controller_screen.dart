import 'package:flutter/material.dart';

class DefaultTabControllerScreen extends StatefulWidget {
  const DefaultTabControllerScreen({super.key});

  @override
  State<DefaultTabControllerScreen> createState() =>
      _DefaultTabControllerScreenState();
}

class _DefaultTabControllerScreenState extends State<DefaultTabControllerScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 1,
      // animationDuration: const Duration(milliseconds: 500),
    );

    tabController.addListener(() {
      print(tabController.index);
    });

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
        title: const Text("DefaultTabControllerScreen"),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            _tabBar(),
            SizedBox(
              height: 300,
              child: _tabBarView(),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    tabController.index = 0;
                  },
                  child: Text("이동"),
                ),
                ElevatedButton(
                  onPressed: () {
                    tabController.animateTo(
                      2,
                      duration: Duration(milliseconds: 2000),
                      curve: Curves.elasticOut,
                    );
                  },
                  child: Text("이동 애니메이션"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TabBar _tabBar() {
    return TabBar(
      controller: tabController,
      labelColor: Colors.black,
      indicatorWeight: 5,
      indicatorColor: Colors.black,
      tabs: [
        const Tab(text: "탭 1"),
        const Tab(text: "탭 2"),
        const Tab(text: "탭 3"),
      ],
    );
  }

  TabBarView _tabBarView() {
    return TabBarView(
      controller: tabController,
      viewportFraction: 0.9,
      children: [
        Container(
          color: Colors.red,
          margin: const EdgeInsets.symmetric(horizontal: 10),
        ),
        Container(
          color: Colors.green,
          margin: const EdgeInsets.symmetric(horizontal: 10),
        ),
        Container(
          color: Colors.pink,
          margin: const EdgeInsets.symmetric(horizontal: 10),
        ),
      ],
    );
  }
}
