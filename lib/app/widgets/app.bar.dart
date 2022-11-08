import 'package:flutter/material.dart';
import 'package:live_me/app/core/app.assets.dart';

class LiveMeAppBar extends StatelessWidget {
  final Color? appBarColor;
  final Color? iconColor;
  const LiveMeAppBar({Key? key, this.appBarColor, this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: appBarColor,
        child: Row(
          children: [
            IconButton(
                onPressed: (){},
                icon: Image.asset(AppAssets.kCommentIcon, color: iconColor,),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.62,
            ),
            IconButton(
                onPressed: (){},
                icon: Image.asset(AppAssets.kMedalIcon, color: iconColor,),
            ),
            IconButton(
                onPressed: (){},
                icon: Image.asset(AppAssets.kBellIcon, color: iconColor,),
            ),
          ],
        ),
      ),
    );
  }
}
