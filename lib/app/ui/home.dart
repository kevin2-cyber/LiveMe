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
          onPressed: () {},
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
        children: [
          ListView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
          ),
        ],
      ),
    );
  }
}
