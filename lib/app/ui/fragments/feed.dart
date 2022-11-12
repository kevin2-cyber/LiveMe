import 'package:flutter/material.dart';
import 'package:live_me/app/widgets/app.bar.dart';

import '../../core/app.assets.dart';
import '../../widgets/scroll.card.dart';

class FeedFragment extends StatelessWidget {
  const FeedFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Image.asset(AppAssets.kCommentIcon, color: Colors.white,),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Image.asset(AppAssets.kMedalIcon, color: Colors.white,),
          ),
          IconButton(
            onPressed: (){},
            icon: Image.asset(AppAssets.kBellIcon, color: Colors.white,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [

            ScrollCard(),
            ScrollCard(),
            ScrollCard(),
            ScrollCard(),
            ScrollCard(),
          ],
        ),
      ),
    );
  }
}
