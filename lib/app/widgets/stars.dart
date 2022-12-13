import 'package:flutter/material.dart';

import '../core/core.dart';

class StarsWidget extends StatelessWidget {
  const StarsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConstants.sizeConfig(context, 0.15).width,
      height: AppConstants.sizeConfig(context, 0.04).height,
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
          const Text(
            '12',
            style: TextStyle(
              color: AppConstants.kPrimaryWhite,
            ),
          ),
        ],
      ),
    );
  }
}