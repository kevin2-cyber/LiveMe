import 'package:flutter/material.dart';
import 'package:live_me/app/core/app.assets.dart';

class LiveMeAppBar extends StatelessWidget {
  final Color? appBarColor;
  final Color? iconColor;
  const LiveMeAppBar({Key? key, this.appBarColor, this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Image.asset(AppAssets.kCommentIcon, color: iconColor,),
        ),
      actions: [
        IconButton(
          onPressed: (){},
          icon: Image.asset(AppAssets.kMedalIcon, color: iconColor,),
        ),
        IconButton(
          onPressed: (){},
          icon: Image.asset(AppAssets.kBellIcon, color: iconColor,),
        ),
      ],
    );
  }
}
