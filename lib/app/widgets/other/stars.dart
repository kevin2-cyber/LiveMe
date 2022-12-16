import 'package:flutter/material.dart';

import '../../core/core.dart';

class StarsWidget extends StatelessWidget {
  final double sizeH;
  final double sizeW;
  final int number;
  final double iconSize;
  final double textSize;

  const StarsWidget({
    super.key,
    required this.sizeH,
    required this.sizeW,
    required this.number,
    required this.iconSize,
    required this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConstants.sizeConfig(context, sizeW).width,
      height: AppConstants.sizeConfig(context, sizeH).height,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(
          //   width: AppConstants.sizeConfig(context, 0.025).width,
          // ),
          Icon(
            Icons.star,
            color: Colors.amber,
            size: iconSize,
          ),
          Text(
            number.toString(),
            style:  TextStyle(
              color: AppConstants.kPrimaryWhite,
              fontSize: textSize,
            ),
          ),
        ],
      ),
    );
  }
}