import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = ScrollController();
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
      body: Column(
        children: const <Widget>[],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: 'Live',
              icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Videos',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'House',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Maison',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Him',
            icon: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
