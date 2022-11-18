import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';

class DanceGridViewCard extends StatelessWidget {
  final String image;
  const DanceGridViewCard({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image.asset(image),
          SizedBox(
            height: AppConstants.sizeConfig(context, 0.003).height,
          ),
          Row(
            children: [
              SizedBox(
                width: AppConstants.sizeConfig(context, 0.02).width,
              ),
              Image.asset(AppAssets.kHeartDarkIcon),
              SizedBox(
                width: AppConstants.sizeConfig(context, 0.02).width,
              ),
              Text('1125'),
              SizedBox(
                width: AppConstants.sizeConfig(context, 0.02).width,
              ),
              Image.asset(AppAssets.kCommentDarkIcon),
              SizedBox(
                width: AppConstants.sizeConfig(context, 0.02).width,
              ),
              Text('125'),
            ],
          ),
        ],
      ),
    );
  }
}