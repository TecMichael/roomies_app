import 'package:flutter/material.dart';
import 'package:roomies_app/screens/pages/dashboard.dart';
import 'package:roomies_app/screens/pages/favorite.dart';

import 'profile.dart';
import 'unknonw.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _widgets = [
    const MainDashboard(),
    const FavouritePage(),
    const UnkwonPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
        selectedIconTheme: const IconThemeData(color: Colors.purple),
        unselectedLabelStyle: TextStyle(color: Colors.grey[400]),
        selectedLabelStyle: const TextStyle(color: Colors.black),
        fixedColor: Colors.green,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.mark_email_unread), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: ''),
        ],
      ),
      body: SafeArea(child: _widgets[_currentIndex]),
    );
  }

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
