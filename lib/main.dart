import 'package:flutter/material.dart';
import 'screen/Top.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //アプリ全体の設定
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'splash screen'), //最初に表示されるWidget
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  //super.key は、親クラス (StatefulWidget) のコンストラクタに key を渡す処理

  final String title; //finalでtitleを変更不可に

  @override //親クラスに定義されたメソッドやプロパティを子クラスで再定義していることを明示
  State<MyHomePage> createState() => _MyHomePageState(); //_MyHomePageStatは状態を管理
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //contextはwidgetツリーの位置
    return Scaffold(
      //Scaffold:画面全体の構造を構築するウィジェット
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //16行目で設定したTheme inversePrimaryはColorSchemeの色のプロパティ
        title: Text(widget.title), //widgetで親クラスのtitleを参照
      ),
      body: Center(
        //child:子クラス
        child: ElevatedButton(
          child: Text('start'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TopPage()),
            );
          },
        ),
      ),
    );
  }
}
