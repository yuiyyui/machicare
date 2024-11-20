import 'package:flutter/material.dart';
import '../components/menu_drawer.dart';

class TopPage extends StatefulWidget {
  @override
  State<TopPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<TopPage> {
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
      body: Center(
        child: Text(
          _selectedCity.isEmpty ? 'No city selected' : _selectedCity,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
