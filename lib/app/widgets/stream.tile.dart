import 'package:flutter/material.dart';
import 'package:live_me/app/widgets/stars.dart';

import '../core/core.dart';

class StreamedTiles extends StatelessWidget {
  const StreamedTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConstants.sizeConfig(context, 0.045).height,
      width: AppConstants.sizeConfig(context, 0.6).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF7C7C7C).withAlpha(200),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(AppAssets.kPhilipeAvatar),
            radius: 15,
          ),
          const Text(
            'Christian Olson',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          const StarsWidget(
            sizeH: 0.028,
            sizeW: 0.09,
            number: 62,
            iconSize: 13,
            textSize: 13,
          ),
          const Text(
            'Hey',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}