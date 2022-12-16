import 'package:flutter/material.dart';

import '../../core/core.dart';
import '../../widgets/widgets.dart';

class FeedFragment extends StatelessWidget {
  const FeedFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: Image.asset(AppAssets.kCommentDarkIcon, color: Colors.white,),
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
