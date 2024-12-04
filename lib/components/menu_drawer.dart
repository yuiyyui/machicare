import 'package:flutter/material.dart';
import '../screen/Top.dart';
import '../screen/MyMap.dart';
import '../screen/MyStock.dart';
import '../screen/MyTimeLine.dart';
import '../screen/User.dart';
import '../screen/Group.dart';
import '../screen/Announcement.dart';
import '../screen/WhatIsMC.dart';
import '../screen/Usage.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //サイドメニュー作成のウィジェット
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text(
              '備える暮らし\n まちケアコモンズ',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('ホーム'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TopPage()), // MenuPage を利用
              );
            },
          ),
          ListTile(
            title: Text('マイマップ'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyMapPage()), // MenuPage を利用
              );
            },
          ),
          ListTile(
            title: Text('マイローリングストック'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyStockPage()), // MenuPage を利用
              );
            },
          ),
          ListTile(
            title: Text('マイタイムライン'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyTimeLinePage()), // MenuPage を利用
              );
            },
          ),
          ListTile(
            title: Text('ユーザー'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => UserPage()), // MenuPage を利用
              );
            },
          ),
          ListTile(
            title: Text('グループ'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GroupPage()), // MenuPage を利用
              );
            },
          ),
          ListTile(
            title: Text('お知らせ'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AnnouncementPage()), // MenuPage を利用
              );
            },
          ),
          ListTile(
            title: Text('まちケア・コモンズとは'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => WhatIsMCPage()), // MenuPage を利用
              );
            },
          ),
          ListTile(
            title: Text('ガイド'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => UsagePage()), // MenuPage を利用
              );
            },
          ),
        ],
      ),
    );
  }
}
