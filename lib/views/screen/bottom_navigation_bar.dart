import 'package:bigmarket/utils/commans/appcolor.dart';
import 'package:bigmarket/utils/commans/appimage.dart';
import 'package:flutter/material.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 3: Highschool',
    ),
    Text(
      'Index 4: Home',
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        elevation: 0,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(AppImage.homeimage,height: 25),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppImage.shopimage,height: 25),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppImage.storeimage,height: 25),
            label: 'Stores',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppImage.shopingbasketimage,height: 25),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppImage.profileimage,height: 25),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.firstColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
