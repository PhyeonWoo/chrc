import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

class Directions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Directions'),
      ),
      body: Center(
        child: SizedBox(
          width: 350,
          height: 400,
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
                id: '동석교회',
                position: NLatLng(37.197009, 127.076695),
              );
              controller.addOverlayAll({marker});

              final onMarkerInfoMap = NInfoWindow.onMarker(
                id: marker.info.id,
                text: "경기 화성시 노작로4길 5-9",
              );
              marker.openInfoWindow(onMarkerInfoMap);
            },
            onMapTapped: (point, latLng) {
              debugPrint("${latLng.latitude}, ${latLng.longitude}");
            },
          ),
        ),
      ),
    );
  }
}