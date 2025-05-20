import 'package:chrc/AppBar/custom_appbar.dart';
import 'package:chrc/Banner/banner_widget.dart';
import 'package:chrc/WelcomPage/greeing_page.dart';
import 'package:chrc/WelcomPage/register_page.dart';
import 'package:chrc/WelcomPage/time_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

void main() {
  runApp(const MainHome());
}

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget buildSection(String title, String content, Color color) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 150,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                content,
                style: TextStyle(
                    fontSize: 16,
                    color: color == Colors.white ? Colors.black : Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(106, 174, 219, 1.0),
              ),
              child: Text(
                '메뉴',
                style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15),

            ListTile(
              // leading: Icon(Icons.campaign),
              title: Text('환영합니다',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              onTap: () {
                Get.to(() => GreetingPage());
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: Text('소개합니다',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              onTap: () {
                Get.to(() => Register());
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: Text("말씀과 찬양",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              onTap: () {
                Get.to(() => Worship());
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: Text("공동체와 양육",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

            ),
            SizedBox(height: 15),
            ListTile(
              title: Text("선교와 사역",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              onTap: () {
                Get.to(() => GreetingPage());
              },
            )
          ],
        ),
      ),

      backgroundColor: const Color.fromRGBO(41, 72, 119, 1.0),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              BannerWidget(),

              buildSection("동석교회", "첫 번째 내용", Colors.white),
              buildSection("금주의 말씀", "두 번째 내용", Colors.lightBlueAccent),
              buildSection("교회주보", "세 번째 내용", Colors.orange),
              buildSection("교회앨범 / 새가족 소개", "네 번째 내용", Colors.redAccent),

              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "경기도 화성시 노작로4길 5-9  |  Tel : 031-613-1004",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
