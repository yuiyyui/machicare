import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../components/menu_drawer.dart';

class TopPage extends StatefulWidget {
  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  var _selectedCity = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Page'),
      ),
      drawer: MenuDrawer(
        onCitySelected: (city) {
          setState(() {
            _selectedCity = city;
          });
        },
      ),
      body: Stack(
        children: [
          // 地図を表示
          FlutterMap(
            options: MapOptions(
              center: LatLng(35.681, 139.767), // 東京駅の座標
              zoom: 14.0,
              interactiveFlags: InteractiveFlag.all,
            ),
            children: [
              // タイルレイヤー
              TileLayer(
                urlTemplate: "https://tile.openstreetmap.jp/{z}/{x}/{y}.png",
              ),
              // サークルレイヤー
              CircleLayer(
                circles: [
                  CircleMarker(
                    point: LatLng(35.681, 139.767), // 東京駅の座標
                    color: Colors.indigo.withOpacity(0.9),
                    radius: 10,
                    borderColor: Colors.white.withOpacity(0.9),
                    borderStrokeWidth: 3,
                  ),
                ],
              ),
            ],
          ),
          // 選択された都市を表示するメニュー
        ],
      ),
    );
  }
}
