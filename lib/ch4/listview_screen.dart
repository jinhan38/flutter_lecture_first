import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  String url =
      "https://post-phinf.pstatic.net/MjAxOTEwMDRfMTM0/MDAxNTcwMTQzNzAxNTgy.PhqRLg0A9EGTVztMHkyTRxvHSMlHUr9fcgVQMpiatGQg.sCbqKAW6ydDCCj05GqmMXrlL67WB0zLfTA84yEs1zzgg.JPEG/02.jpg?type=w1200";

  List<int> dataList = [
    45,
    5,
    2,
    67,
    567567,
    1345,
    537,
    23413,
    67,
    7893,
    89,
    53234,
    1345,
    537,
    23413,
    67,
    7893,
    89,
    53234,
    1345,
    537,
    23413,
    67,
    7893,
    89,
    53234,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewScreen'),
      ),
      body: listViewSeparator(),
    );
  }

  Widget listView() {
    return ListView(
      /// ios 기본값
      // physics: BouncingScrollPhysics(),

      /// android 기본값
      // physics: ClampingScrollPhysics(),

      // physics: const NeverScrollableScrollPhysics(),

      // physics: RangeMaintainingScrollPhysics(),

      children: [
        _box(Colors.black),
        _box(Colors.red),
        _box(Colors.orange),
      ],
    );
  }

  Widget listViewBuilder() {
    /// 인스타 ->

    /// itemCount = 30 -> 리스트의 개수가 30개
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (context, index) {
        return Image.network(url);

        /// index : 리스트 아이템의 순서
        return Text(
          index.toString(),
          style: TextStyle(fontSize: 30),
        );
      },
    );
  }

  Widget listViewSeparator() {
    return ListView.separated(
      cacheExtent: 1000,
      /// 아이템들의 위젯
      itemBuilder: (context, index) {
        print("index : $index");
        return Column(
          children: [
            Text(
              index.toString(),
              style: TextStyle(fontSize: 30),
            ),
          ],
        );
      },

      /// item들의 사이에 들어가는 위젯
      separatorBuilder: (context, index) {
        return SizedBox(height: 50);
      },
      itemCount: 50,
    );
  }

  Widget _box(Color color) {
    return Container(
      height: 300,
      color: color,
    );
  }
}
