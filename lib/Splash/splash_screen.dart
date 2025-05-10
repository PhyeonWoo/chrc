import 'package:chrc/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(Splash());

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    _init();
  }
// d
  void _init() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
        context,
    MaterialPageRoute(builder: (context) => MyApp())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/church_logo.png',
              fit: BoxFit.fill,
            ),
            Text("\n"),
            CircularProgressIndicator(color: Colors.black12,),
          ],
        ),
      ),
    );
  }
}
