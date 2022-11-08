import 'package:flutter/material.dart';
import 'package:live_me/app/widgets/app.bar.dart';

class FeedFragment extends StatelessWidget {
  const FeedFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        LiveMeAppBar(
          appBarColor: Colors.black,
          iconColor: Colors.white,
        ),
      ],
    );
  }
}
