import 'package:flutter/material.dart';

import '../../core/core.dart';

class SideStream extends StatelessWidget {
  const SideStream({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20)
      ),
      child: Container(
        height: AppConstants.sizeConfig(context, 0.18).height,
        width: AppConstants.sizeConfig(context, 0.12).width,
        decoration: BoxDecoration(
          color: const Color(0xFF151515).withAlpha(55),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
                child: Image.asset(AppAssets.kSharingT),
            ),
            Image.asset(AppAssets.kDollarT),
            CircleAvatar(
              backgroundColor: const Color(0xFF7C7C7C).withAlpha(100),
              child: Image.asset(AppAssets.kChevronUp),
            ),
          ],
        ),
      ),
    );
  }
}