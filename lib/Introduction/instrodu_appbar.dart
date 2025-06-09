import 'package:chrc/Introduction/introdu_vision.dart';
import 'package:chrc/WelcomPage/greeing_page.dart';
import 'package:chrc/WelcomPage/register_page.dart';
import 'package:chrc/WelcomPage/time_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroduAppBar extends StatelessWidget implements PreferredSizeWidget {
  const IntroduAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Color appbarColor = const Color.fromRGBO(106, 174, 219, 1.0);
    return AppBar(
      backgroundColor: appbarColor,
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                Get.back();
                Get.to(() => Vision());
              },
              child: const Text(
                "목회비전",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back();
                Get.to(() => Register());
              },
              child: const Text(
                "목회계획",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back();
                Get.to(() => WorshipSchedule());
              },
              child: const Text(
                "연혁",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back();
                Get.to(() => WorshipSchedule());
              },
              child: const Text(
                "섬기는 분들",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back();
                Get.to(() => WorshipSchedule());
              },
              child: const Text(
                "주보",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}