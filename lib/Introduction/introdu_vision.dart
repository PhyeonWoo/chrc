import 'package:chrc/Introduction/instrodu_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Vision());

class Vision extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IntroduAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "목회비전",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "🔵 2025년 표어",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "'희년의 감사로 부흥하는 교회'\n(레25:8-12 행9:31)",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "🔵 동석교회 비전",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "1. 예배에 생명거는 교회",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen
                  ),
                ),
                Text(
                  "하나님의 임재를 경험할 수 있습니다.\n성령의 기름 부으심이 있습니다.\n상한 영혼의 치유가 있습니다.\n찬양속에 만져 주시는 주님의 손길을 느낄 수 있습니다.\n하늘 문을 여는 뜨거운 기도의 사긴이 있습니다.\n말씀에 능력이 있고 실제적입니다.",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "2. 사람을 키우는 교회",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen
                  ),
                ),
                Text(
                  "훈련을 통하여 예수님의 마음으로\n세상과 열방을 섬기는 일꾼으로 만들어갑니다.",
                  style: TextStyle(
                  fontSize: 20,
                  ),
                ),
                Text(
                  "새 가정반, 말씀묵상(Q.T),말씀 나눔방,\n성경통독학교,DM410 사역자반 등",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "3. 사역중심 교회",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen
                  ),
                ),
                Text(
                  "섬김의 정신은 자원함과 감사합 입니다.",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
                Text(
                  "받은 은사 중심으로 모든 사람에게 사역의 문은 열려 있습니다.",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "4. 가정지향 교회",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen
                  ),
                ),
                Text(
                  "가정의 소중함을 알고 가정을 살리는 목회를 지향합니다.",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
                Text(
                  "가정예배학교, 결혼예비학교 등",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueAccent
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "5. 선교지향 교회",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen
                  ),
                ),
                Text(
                  "동석교회는 열방을 품고 기도하며, 열방으로 선교사를 보내며 후원하는 교회입니다.",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
                Text(
                  "중국,필리핀,우크라이나,캄보디아,가나,브론디,\n마케도니아,바누아투,북한에\n제2동석교회 성전세우기 준비 등",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueAccent
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

