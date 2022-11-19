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
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              spreadRadius: 0,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            items:  [
              BottomNavigationBarItem(
                label: 'Live',
                  icon: Image.asset(AppAssets.kHomeIcon),
              ),
              BottomNavigationBarItem(
                label: 'Videos',
                icon: Image.asset(AppAssets.kVideoIcon),
              ),
              BottomNavigationBarItem(
                label: 'Camera',
                icon: Image.asset(AppAssets.kCameraICon),
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
        ),
      ),
    );
  }
}
