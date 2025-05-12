import 'package:chrc/WelcomPage/directions_page.dart';
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
                  Get.to(() => const Direction());
                },
                child: const Text("test1",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("test2",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("test4",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("test5",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("test6",
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
