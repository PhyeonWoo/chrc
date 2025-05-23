import 'package:chrc/WelcomPage/directions_page.dart';
import 'package:chrc/WelcomPage/greeing_page.dart';
import 'package:chrc/WelcomPage/register_page.dart';
import 'package:chrc/WelcomPage/time_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WelcomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WelcomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Color appbarColor = const Color.fromRGBO(106, 174, 219, 1.0);
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: Container(
        color: appbarColor,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // ✅ 버튼 중앙 정렬
            children: [
              TextButton(
                onPressed: () {
                  Get.back();
                  Get.to(() => const GreetingPage());
                },
                child: const Text("인사말",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              TextButton(
                onPressed: () {
                  Get.back();
                  Get.to(() => Register());
                },
                child: const Text("새가족",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              TextButton(
                onPressed: () {
                  Get.back();
                  Get.to(() => WorshipSchedule());
                },
                child: const Text("예배 시간",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              TextButton(
                onPressed: () {
                  Get.back();
                  Get.to(() => Directions());
                },
                child: const Text("오시는 길",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
