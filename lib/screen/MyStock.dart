import 'package:flutter/material.dart';

class MyStockPage extends StatefulWidget {
  @override
  State<MyStockPage> createState() => _MyStockPageState();
}

class _MyStockPageState extends State<MyStockPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyStock Page'),
      ),
    );
  }
}
