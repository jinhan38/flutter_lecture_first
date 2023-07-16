import 'package:flutter/material.dart';

class RouteNamedThirdScreen extends StatefulWidget {
  const RouteNamedThirdScreen({super.key});

  @override
  State<RouteNamedThirdScreen> createState() => _RouteNamedThirdScreenState();
}

class _RouteNamedThirdScreenState extends State<RouteNamedThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RouteNameThirdScreen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.popUntil(
                context,
                ModalRoute.withName('/first'),
              );
            },
            child: Text("popUntil"),
          ),
        ],
      ),
    );
  }
}
