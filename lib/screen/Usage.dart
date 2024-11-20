import 'package:flutter/material.dart';

class UsagePage extends StatefulWidget {
  @override
  State<UsagePage> createState() => _UsagePageState();
}

class _UsagePageState extends State<UsagePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usage Page'),
      ),
    );
  }
}
