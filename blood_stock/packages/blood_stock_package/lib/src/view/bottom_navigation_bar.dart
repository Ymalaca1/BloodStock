import 'package:blood_stock_package/src/view/feed_page.dart';
import 'package:common_package/common.dart';
import 'package:flutter/material.dart';
import 'hemocentro_page.dart';
import 'profile_page.dart';

class MainHomePage extends StatefulWidget {
  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int _indiceAtual = 1;
  late List<Widget> _telas = [
    ProfilePage(),
    FeedPage(),
    HemocentroPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 15,
        backgroundColor: ColorPalette.background,
        selectedIconTheme: IconThemeData(color: ColorPalette.primary),
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        iconSize: 40,
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.location_on_rounded), label: 'Mapa'),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}
