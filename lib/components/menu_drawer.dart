import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  final Function(String) onCitySelected;

  const MenuDrawer({required this.onCitySelected, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'My App',
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
            title: Text('Los Angeles'),
            onTap: () {
              onCitySelected('Los Angeles, CA');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Honolulu'),
            onTap: () {
              onCitySelected('Honolulu, HI');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Dallas'),
            onTap: () {
              onCitySelected('Dallas, TX');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Seattle'),
            onTap: () {
              onCitySelected('Seattle, WA');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Tokyo'),
            onTap: () {
              onCitySelected('Tokyo, Japan');
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
