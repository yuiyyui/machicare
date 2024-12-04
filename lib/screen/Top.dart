import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../components/menu_drawer.dart';

class TopPage extends StatefulWidget {
  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  int _selectedIndex = 0; // 選択中のフッターメニューのインデックス

  // フッターメニューで切り替える画面
  final List<Widget> _pages = [
    Center(child: Text('ホーム')),
    Center(child: Text('お知らせ')),
    Center(child: Text('マイページ')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Page'),
      ),
      drawer: MenuDrawer(
        onCitySelected: (city) {
          setState(() {});
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
          // 選択中のページを表示
          _pages[_selectedIndex], // フッターメニューで選ばれた画面を表示
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'お知らせ'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'マイページ'),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index; // 選択したメニューのインデックスを更新
          });
        },
      ),
    );
  }
}
