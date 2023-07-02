import 'package:flutter/material.dart';

class SingleScrollScreen extends StatefulWidget {
  const SingleScrollScreen({super.key});

  @override
  State<SingleScrollScreen> createState() => _SingleScrollScreenState();
}

class _SingleScrollScreenState extends State<SingleScrollScreen> {
  /// ScrollView의 정보들을 얻을 수 있음
  /// ScrollView의 상태를 변경할 수 있음
  ScrollController scrollController = ScrollController();

  /// initState 함수는 StatefulWidget에만 있음
  /// 최초에 1번만 호출됨
  @override
  void initState() {
    super.initState();

    /// addListener : 스크롤이 변경될 때 마다 호출
    scrollController.addListener(() {

      /// 시작점부터 떨어진 거리
      var offset = scrollController.offset;
      // print('offset : $offset');

      var direction = scrollController.position.userScrollDirection;

      print('direction : $direction');
    });
  }

  /// dispose : 화면이 사라질 때 호출
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  /// setState를 호출하면 build 부터 다시 시작
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleScrollScreen'),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        controller: scrollController,

        /// true로 설정하면 바닥부터 시작
        // reverse: true,
        scrollDirection: Axis.vertical,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            TextFormField(),
            _box(Colors.black),
            _box(Colors.red),
            _box(Colors.orange),
            _box(Colors.yellow),
            _box(Colors.green),
            _box(Colors.blue),
            _box(Colors.indigo),
          ],
        ),
      ),
    );
  }

  Widget _box(Color color) {
    return Container(
      height: 150,
      // width: 150,
      color: color,
    );
  }
}
