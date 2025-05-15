import 'package:chrc/WelcomPage/welcom_appbar.dart';
import 'package:flutter/material.dart';

class GreetingPage extends StatelessWidget {
  const GreetingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WelcomAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '할렐루야! 홈페이지 방문을 환영합니다.',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  child: Image.asset(
                    'assets/images/pastor_img.png',
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '동석교회',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text: ' 홈페이지 방문을 진심으로 환영합니다.\n\n',
                        style: TextStyle(
                            fontSize: 18
                        ),
                      ),
                      TextSpan(
                        text: '동석교회',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text:
                        '는 주님의 사랑이 있고, 예배에 성령의 기름 부으심이 있고, 떡을 떼는 성도의 교제가 있는 교회입니다.\n\n',
                        style: TextStyle(
                          fontSize: 18,
                        )
                      ),
                      TextSpan(
                        text: '동석교회',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text:
                        '는 대한예수교장로회 통합교단 경기도회에 소속된 건강한 교회입니다.\n\n',
                        style: TextStyle(
                          fontSize: 18
                        )
                      ),
                      TextSpan(
                        text: '동석교회',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text:
                        '는 누구나 교회공동체의 일원이 될 수 있는 문턱이 낮은 교회입니다.\n\n',
                        style: TextStyle(
                          fontSize: 18
                        )
                      ),
                      TextSpan(
                        text: '동석교회',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text:
                        '는 담임목사와 함께하는 6주간의 새가족 교육을 이수하면 모든 사역에 은사대로 동참할 수 있습니다.\n\n',
                        style: TextStyle(
                          fontSize: 18,
                        )
                      ),
                      TextSpan(
                        text: '동석교회',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                      TextSpan(
                        text:
                        '가 중요시 여기는 것은 하나님의 중심의 예배와 다음세대를 신앙으로 길러내는 교회학교 교육입니다.\n\n',
                        style: TextStyle(
                          fontSize: 18
                        )
                      ),
                      TextSpan(
                        text: '동석교회',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                      TextSpan(
                        text:
                        '는 강하고 건강한 성도들을 세워 사역지마다 영향을 주는 교회를 지향합니다.\n\n',
                        style: TextStyle(
                          fontSize: 18
                        )
                      ),
                      TextSpan(
                        text: '동석교회',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                      TextSpan(
                          text: '의 꿈은',
                        style: TextStyle(
                          fontSize: 18
                        )
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              '우리의 꿈은 교회가 세상으로부터 칭찬받는 것입니다.\n'
                  '우리의 꿈은 가정과 직장, 사회에서 그리스도인으로서 책임있는 삶을 사는 것입니다.',
              style: TextStyle(
                fontSize: 17,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              '그래서 동탄 신도시에 사자들이 어린양과 뛰놀고\n'
                  '독사굴에 어린아이가 손을 넣어도 물지 않는\n'
                  '하나님 나라를 세워가는 것입니다.\n\n'
                  '이 아름다운 하나님 나라를 세워가는 데 여러분을 동역자로 초대합니다.\n'
                  '환영합니다. 사랑합니다. 그리고 축복합니다.\n\n',
              style: TextStyle(fontSize: 17),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                '위임목사 김상출',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}