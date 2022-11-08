import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.blueGrey,
    ),
    Container(
      color: Colors.lightBlueAccent,
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(AppAssets.kCommentIcon),
        ),
        actions: [
          IconButton(
            onPressed: () {},
              icon: Image.asset(AppAssets.kMedalIcon),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(AppAssets.kBellIcon),
          ),
        ],
      ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  [
          const BottomNavigationBarItem(
            label: 'Live',
              icon: Icon(Icons.home),
          ),
          const BottomNavigationBarItem(
            label: 'Videos',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Camera',
            icon: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Colors.black,
              ),
              child: const Icon(
                  Icons.camera_alt,
                color: Colors.white,
              ),
            ),
          ),
          const BottomNavigationBarItem(
            label: 'Maison',
            icon: Icon(Icons.home),
          ),
          const BottomNavigationBarItem(
            label: 'Him',
            icon: Icon(Icons.home),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black38,
        onTap: _onItemTapped,
      ),
    );
  }
}
