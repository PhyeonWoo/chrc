import 'package:chrc/WelcomPage/welcom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Register());

class Register extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WelcomAppBar(),
      bottomSheet: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "새가족등록안내",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 30,),
            Text(
              "사랑이 가득한 동석교회에 오신 여러분을 환영합니다.",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                color: Colors.blueAccent
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  child: Image.asset(
                    'assets/images/register_family.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 20),
                Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "1. 새가족 신청\n",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          )
                        ),
                        TextSpan(
                          text: "새가족 신청을 원하시는 분은 예배후 2층 목양실로 오시면 됩니다.\n\n",
                          style: TextStyle(
                            fontSize: 18
                          )
                        ),
                        TextSpan(
                            text: "2. DM410 새가정교육\n",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            )
                        ),
                        TextSpan(
                            text:
                            "새가족으로 신청하신 모든 분들은 직분과 상관없이\n"
                            "6주간 새가정교육을 받습니다.\n"
                            "이 과정을 통해 그 동안 신앙생활 해오면서 알고 있는 복음의 내용을"
                            "체계적으로 정리하는 시간과 담임목사님과 친밀한 교제를 나누는 시간을 통해"
                            "교회 정착에 큰 도움을 받게 될 것입니다.\n\n",
                            style: TextStyle(
                                fontSize: 18
                            )
                        ),
                        TextSpan(
                            text: "3. 교인등록\n",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            )
                        ),
                        TextSpan(
                            text: "새가정교육을 이수하셔야 만 본 교회 등록교인으로서 교회 안 신앙생활과 여러사역과 봉사 등을 통해 활동을 하실 수 있으십니다.\n\n",
                            style: TextStyle(
                                fontSize: 18
                            )
                        ),
                        TextSpan(
                            text: "4. DM410 사역자교육\n",
                            style: TextStyle(
                                fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            )
                        ),
                        TextSpan(
                            text: "새가정교육 과정을 마친 등록교우들은 이후 DM410 사역자교육에 참여할 자격이 주어지며 더 성숙한 신앙인으로 자라가는 훈련과 교회 사역자로 세워질 수 있는 기회를 가질 수 있게 됩니다.\n\n",
                            style: TextStyle(
                              fontSize: 18,
                            )
                        ),
                        TextSpan(
                            text: "5. DM410(DIAMOND MINISTRY 410)이란?\n",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            )
                        ),
                        TextSpan(
                            text: "첫째. 교회 신앙과 의식이 약한 성도들을 일으키는 훈련과정입니다.\n\n"
                          "둘째. 단계별 과정을 통하여 교회를 더욱 사랑하게 하는 특별한 훈련과정입니다.\n\n"
                          "셋째. 말씀중심, 교회중심의 견고한 틀로 세워지길 원하시는 모든 분들께 가장 좋은 효과적인 과정입니다.",
                            style: TextStyle(
                              fontSize: 18,
                            )
                        ),
                      ]
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }

}

