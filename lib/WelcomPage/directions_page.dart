import 'package:chrc/WelcomPage/welcom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

class Directions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WelcomAppBar(),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            "오시는 길",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black),
          ),
          SizedBox(height: 30),
          SizedBox(
            width: 350,
            height: 450,
            child: NaverMap(
              options: NaverMapViewOptions(
                indoorEnable: false,
                locationButtonEnable: true,
                scrollGesturesEnable: true,
                consumeSymbolTapEvents: true,
                initialCameraPosition: NCameraPosition(
                  target: NLatLng(37.197009, 127.076695),
                  zoom: 16,
                  bearing: 0,
                  tilt: 0,
              ),
                mapType: NMapType.basic,
                activeLayerGroups: [NLayerGroup.building, NLayerGroup.transit],
            ),
              onMapReady: (controller) {
                final marker = NMarker(
                  id: "동석교회",
                  position: NLatLng(37.197009, 127.076695),
                );
                controller.addOverlayAll({marker});

                final onMakerInfoMap = NInfoWindow.onMarker(
                    id: marker.info.id,
                    text: "경기 화성시 노작로4길 5-9",
                );
                marker.openInfoWindow(onMakerInfoMap);
              },
              onMapTapped: (point,latLng) {
                debugPrint("${latLng.latitude}, ${latLng.longitude}");
              },
            ),
          ),
          SizedBox(height: 30),
          Text(
            "1. 노작4거리 교회 쪽 3차선에 주차 가능합니다. (오전 11시30분 - 오후2시)",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
          SizedBox(height: 20),
          Text(
            "2. 동탄복합문화센터 주차장 및 노작마을 공영주차장(여울공원)쪽을 이용하셔도 됩니다. (약 300미터 거리)",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black
            ),
          ),
          SizedBox(height: 20),
          Text(
            "노선버스",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
          Text(
            "노작마을, 한화우림(37616) H24 H25 17-1 H6(심야)\n솔빛마을, 신도브래뉴(37615) H101 H5(심야)",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "주일1부예배(10시) 1호차 - 1동탄",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
          Text(
            "09:00(병점 LH7단지) - 09:15 (푸른마을 모아미래도) - 09:25 (센트럴파크) - 09:35 (교회)",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black
            ),
          ),
          SizedBox(height: 20),
          Text(
            "주일1부예배(10시) 2호차/- 2동탄",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
          Text(
            "09:15 (목동베라체) - 09:25 (LH행복주택2단지) - 9:35 (동탄역 노르웨이숲) - 09:40 (교회)",
            style: TextStyle(
                fontSize: 15,
                color: Colors.black
            ),
          ),
          SizedBox(height: 20),
          Text(
            "주일2부예배(11시40분) 1호차 - 1동탄",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
          Text(
            "11:20 (기산 삼성 래미안) - 11:35 (교회)",
            style: TextStyle(
                fontSize: 15,
                color: Colors.black
            ),
          ),
          SizedBox(height: 20),
          Text(
            "주일2부예배(11시40분) 2호차/12인승 - 1동탄",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
          Text(
            "10:30 (장지동) - 10:50 (동탄 노르웨이 숲) - 11:10(기산 삼성래미안) - 11:25 (교회)",
            style: TextStyle(
                fontSize: 15,
                color: Colors.black
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}