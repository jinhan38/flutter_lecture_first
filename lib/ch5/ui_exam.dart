import 'package:flutter/material.dart';

class UiExamScreen extends StatefulWidget {
  const UiExamScreen({super.key});

  @override
  State<UiExamScreen> createState() => _UiExamScreenState();
}

class _UiExamScreenState extends State<UiExamScreen> {
  final PageController pageController = PageController(viewportFraction: 0.9);
  int _currentIndex = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: _body(),
      bottomNavigationBar: _bottomNav(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text("복잡한 UI"),
      centerTitle: true,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }

  Widget _body() {
    return IndexedStack(
      index: _currentIndex,
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              _top(),
              const SizedBox(height: 20),
              _middle(),
              const SizedBox(height: 20),
              ..._bottom(),
            ],
          ),
        ),
        Center(child: Text("두번째",style: TextStyle(fontSize: 30),)),
        Center(child: Text("세번째",style: TextStyle(fontSize: 30),)),
      ],
    );
  }

  List<String> labels = [
    "택시",
    "버스",
    "바이크",
    "승용차",
    "택시2",
    "버스2",
  ];

  Widget _top() {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 4,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      childAspectRatio: 1.2,
      children: [
        /// List.generate : 반복문
        ...List.generate(labels.length, (index) {
          return iconItem(
            text: labels[index],
            onPressed: () {
              print('${labels[index]} 클릭');
            },
          );
        }),
      ],
    );
  }

  Widget iconItem({
    required String text,
    required Function() onPressed,
  }) {
    return TextButton(
      onPressed: () {
        onPressed();
      },
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        padding: EdgeInsets.zero,
        shape: const CircleBorder(),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.local_taxi, size: 40),
          Text(text),
        ],
      ),
    );
  }

  List<String> imageList = [
    "assets/summer.jpg",
    "assets/summer.jpg",
    "assets/summer.jpg",
  ];

  Widget _middle() {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        controller: pageController,
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          // int currentPage = pageController.page!.ceil();
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(imageList[index]).image,
              ),
            ),
          );
        },
      ),
    );
  }

  List<Widget> _bottom() {
    return List.generate(10, (index) {
      return ListTile(
        onTap: () {},
        leading: const Icon(Icons.notifications_none_rounded),
        title: const Padding(
          padding: EdgeInsets.only(bottom: 4),
          child: Text("[이벤트] 이것은 공지사항 입니다."),
        ),
        minLeadingWidth: 0,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      );
    });
  }

  Widget _bottomNav() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (value) {
        setState(() {
          _currentIndex = value;
        });
      },

      showSelectedLabels: true,
      showUnselectedLabels: false,
      backgroundColor: Colors.orange.shade50,
      iconSize: 30,
      selectedItemColor: Colors.pink,
      unselectedItemColor: Colors.grey.shade500,
      // type: BottomNavigationBarType.shifting,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: "홈",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.alarm_off),
          activeIcon: Icon(Icons.access_alarm),
          label: "알림",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          activeIcon: Icon(Icons.person),
          label: "친구",
        ),
      ],
    );
  }
}
