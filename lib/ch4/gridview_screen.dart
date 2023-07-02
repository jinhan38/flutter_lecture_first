import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  String url =
      "https://t3.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/2AuX/image/iqO3rAkeUG3covyieQBVs56zf2E.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridViewScreen"),
      ),
      body: gridviewBuilder(),
    );
  }

  Widget gridviewBase() {
    return GridView(
      gridDelegate: delegate(),
      padding: const EdgeInsets.all(10),
      children: [
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
        Image.network(url, fit: BoxFit.cover),
      ],
    );
  }

  Widget gridviewBuilder() {
    return GridView.builder(
      gridDelegate: delegate(),
      itemCount: 100,
      itemBuilder: (context, index) {
        print("index : $index");
        return Image.network(url);
      },
    );
  }

  SliverGridDelegate delegate() {
    return const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,

        /// 1 : 기준축과 교차축의 비율 동일
        /// 0.5 : 1보다 낮은 경우는 기준축이 더 큼
        ///       0.5라면 기준축이 교차축의 2배
        /// 2 : 1보다 크면 교차축 더 큼
        ///     2라면 교차축이 기준축의 두배
        childAspectRatio: 1,

        /// 메인축의 사이즈 고정 설정
        mainAxisExtent: 150);
  }
}
