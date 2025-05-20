import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const Direction());

class Direction extends StatelessWidget {
  const Direction({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('길 안내'),
          backgroundColor: const Color.fromRGBO(106, 174, 219, 1.0),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Get.back(); // 뒤로가기
            },
          ),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              '동석교회에 오신 여러분을 진심으로 환영합니다!\n\n함께 예배하며 하나님의 은혜를 누리세요.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}