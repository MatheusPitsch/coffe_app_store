import 'package:boxicons/boxicons.dart';
import 'package:coffe_store_app/app/presenter/coffes/coffes_page.dart';
import 'package:coffe_store_app/app/presenter/favorites/favorites_page.dart';
import 'package:coffe_store_app/app/presenter/profile/profile_page.dart';
import '../login/login_page.dart';
import 'Widget/body_home_page.dart';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// ignore: camel_case_types
class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    BodyHomePage(),
    CoffesPage(),
    FavoritesPage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Boxicons.bx_store,
              color: Colors.black,
            ),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.coffee_outlined,
              color: Colors.black,
            ),
            label: "Cafés",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            label: "Favoritos",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Colors.black,
            ),
            label: "Pefil",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
