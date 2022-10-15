import 'package:flutter/material.dart';
import 'package:live_me/utils/app_assets.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.kWelcomeBg),
          ),
        ),
      ),
    );
  }
}
