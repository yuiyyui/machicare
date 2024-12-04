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

  final List<Widget> _pages = [
    Center(child: Text('現在地')),
    Center(child: Text('地域資源')),
    Center(child: Text('ハザード')),
    // Center(child: Text('凡例')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Page'),
      ),
      drawer: MenuDrawer(),
      body: Stack(
        //stack:複数の子ウィジェットをリストに
        children: [
          FlutterMap(
            options: MapOptions(
              center: LatLng(34.666536, 133.918077), // 岡山駅の座標
              zoom: 14.0,
              interactiveFlags: InteractiveFlag.all, //地図のインタラクション(ズーム，移動)が可能に
            ),
            children: [
              // タイルレイヤー
              TileLayer(
                urlTemplate: "https://tile.openstreetmap.jp/{z}/{x}/{y}.png",
              ),
              // 現在地の表示
              CircleLayer(
                circles: [
                  CircleMarker(
                    point: LatLng(34.666536, 133.918077), // 岡山駅の座標
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '現在地'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: '地域資源'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'ハザード'),
          // BottomNavigationBarItem(icon: Icon(Icons.person), label: '凡例'),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            //再描画
            _selectedIndex = index; //リストなので0,1,2,3のいずれかが格納される
          });
        },
      ),
    );
  }
}
