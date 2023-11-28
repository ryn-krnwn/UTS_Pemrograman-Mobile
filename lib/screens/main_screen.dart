import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:educationapps/screens/home_screen.dart';
import 'package:educationapps/screens/category_screen.dart';
import 'package:educationapps/screens/notif_screen.dart';
import 'package:educationapps/screens/profile.dart';
import 'package:educationapps/screens/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _index = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    const CatScreen(),
    const SearchScreen(),
    const NotificationScreen(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_index],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _index,
        height: 70,
        items: const [
          Icon(Icons.home_filled, size: 30 ,color: Colors.white,),
          Icon(Icons.category, size: 30,color: Colors.white),
          Icon(Icons.search, size: 30,color: Colors.white),
          Icon(Icons.notifications, size: 30,color: Colors.white),
          Icon(Icons.perm_identity, size: 30,color: Colors.white),
        ],
        color: Colors.blue,
        buttonBackgroundColor: Colors.blueAccent,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInCubic,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
