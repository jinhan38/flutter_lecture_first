import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigationBarScreen"),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Container(color: Colors.green),
          Container(color: Colors.red),
          Container(color: Colors.indigo),
        ],
      ),
      bottomNavigationBar: _bottomNav(),
    );
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
