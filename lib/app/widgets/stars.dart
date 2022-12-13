import 'package:flutter/material.dart';

import '../core/core.dart';

class StarsWidget extends StatelessWidget {
  final double sizeH;
  final double sizeW;
  final int number;

  const StarsWidget({
    super.key,
    required this.sizeH,
    required this.sizeW,
    required this.number,
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
        children: [
          SizedBox(
            width: AppConstants.sizeConfig(context, 0.025).width,
          ),
          const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Text(
            number.toString(),
            style: const TextStyle(
              color: AppConstants.kPrimaryWhite,
            ),
          ),
        ],
      ),
    );
  }
}