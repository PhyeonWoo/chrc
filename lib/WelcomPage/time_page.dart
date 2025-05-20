import 'package:chrc/WelcomPage/welcom_appbar.dart';
import 'package:flutter/material.dart';

class WorshipSchedule extends StatelessWidget {
  const WorshipSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WelcomAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            "예배시간안내",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
          SizedBox(height: 30),
          buildWorshipSection(
            title: '🔵 주일예배',
            rows: const [
              ['주일 1부예배', '오전 10시', '대예배당(3층)'],
              ['주일 2부예배', '오전 11시 40분', '대예배당(3층)'],
              ['오후찬양예배', '오후 2시 30분', '대예배당(3층)'],
            ],
          ),
          buildWorshipSection(
            title: '🔵 주중예배',
            rows: const [
              ['수요기도회', '수요일 저녁 7시 30분', '대예배당(3층)'],
              ['새벽기도회', '새벽 5시 30분(월~토)', '대예배당(3층)'],
              ['화요중보기도회', '화요일 오전 10시 30분', '세미나실(지하1층)'],
              ['구역예배', '각 구역별', '각 구역별'],
            ],
          ),
          buildWorshipSection(
            title: '🔵 교회학교',
            rows: const [
              ['유치부', '주일 오전 11시 40분', '유치부실(2층)'],
              ['유년부(1~3학년)', '주일 오전 11시 40분', '교육관(5층)'],
              ['소년부(4~6학년)', '주일 오전 11시 40분', '세미나실(지하1층)'],
              ['중등부', '주일 오전 10시', '세미나실(지하1층)'],
              ['고등부', '주일 오전 10시', '교육관(5층)'],
              ['청년부', '주일 오후 2시', '교육관(5층)'],
            ],
          ),
        ],
      ),
    );
  }

  Widget buildWorshipSection({required String title, required List<List<String>> rows}) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Table(
              border: TableBorder.all(color: Colors.grey.shade300),
              columnWidths: const {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(2),
                2: FlexColumnWidth(3),
              },
              children: [
                const TableRow(
                  decoration: BoxDecoration(color: Colors.white),
                  children: [
                    Padding(padding: EdgeInsets.all(8.0), child: Text('예배')),
                    Padding(padding: EdgeInsets.all(8.0), child: Text('시간')),
                    Padding(padding: EdgeInsets.all(8.0), child: Text('장소')),
                  ],
                ),
                for (var row in rows)
                  TableRow(
                    children: row.map((cell) =>
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(cell),
                        )).toList(),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}