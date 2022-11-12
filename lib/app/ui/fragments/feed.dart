import 'package:flutter/material.dart';
import 'package:live_me/app/widgets/app.bar.dart';

import '../../widgets/scroll.card.dart';

class FeedFragment extends StatelessWidget {
  const FeedFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        LiveMeAppBar(
          appBarColor: Colors.black,
          iconColor: Colors.white,
        ),
        ListView(
          children: [
          ScrollCard()
        ]),
      ],
    );
  }
}


