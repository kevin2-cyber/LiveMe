import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';
import 'package:live_me/app/ui/fragments/fragments.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
    LiveFragment(),
    VideoFragment(),
    CameraFragment(),
    FeedFragment(),
    ProfileFragment(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(
            label: 'Live',
              icon: Image.asset(AppAssets.kHome),
          ),
          BottomNavigationBarItem(
            label: 'Videos',
            icon: Image.asset(AppAssets.kVideo),
          ),
          BottomNavigationBarItem(
            label: 'Camera',
            icon: Image.asset(AppAssets.kCamera),
          ),
          BottomNavigationBarItem(
            label: 'Feed',
            icon: Image.asset(AppAssets.kNewsIcon),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Image.asset(AppAssets.kProfileIcon),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
