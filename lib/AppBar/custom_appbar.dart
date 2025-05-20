import 'package:chrc/MainPage/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    Color appbarColor = Color.fromRGBO(106,174,219, 1.0);
    return AppBar(
      actions: [
        IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu)
        ),
      ],
      elevation: 0,
      backgroundColor: appbarColor,
      automaticallyImplyLeading: false, // 뒤로가기 버튼을 숨김
      title: Column(
        children: [
          Image(
            image: AssetImage("assets/images/home_logo.png"),
            fit: BoxFit.contain,
            height: 45,
          ),
          SizedBox(width: 104),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
