import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';

import '../widgets/side.stream.dart';
import '../widgets/stars.dart';

class Streaming extends StatelessWidget {
  const Streaming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const kGold = Color(0xFFFBBF00);
    return Scaffold(
      body: Container(
        height: AppConstants.sizeConfig(context, 1).height,
        width: AppConstants.sizeConfig(context, 1).width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.kStreaming),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 20,
              child: Container(
                width: AppConstants.sizeConfig(context, 0.3).width,
                height: AppConstants.sizeConfig(context, 0.04).height,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: AppConstants.sizeConfig(context, 0.03).width,
                    ),
                    Image.asset(AppAssets.kStreamingAvatar),
                    SizedBox(
                      width: AppConstants.sizeConfig(context, 0.025).width,
                    ),
                    const Text(
                      'Username',
                      style: TextStyle(
                        color: AppConstants.kPrimaryWhite,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              top: 50,
              right: 200,
              child: StarsWidget(
                sizeH: 0.04,
                sizeW: 0.14,
                number: 12,
                iconSize: 20,
                textSize: 15,
              ),
            ),
            Positioned(
              top: 50,
              right: 20,
              child: Container(
                width: AppConstants.sizeConfig(context, 0.23).width,
                height: AppConstants.sizeConfig(context, 0.04).height,
                decoration: BoxDecoration(
                  color: Colors.grey.withAlpha(150),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: AppConstants.sizeConfig(context, 0.025).width,
                    ),
                    Image.asset(AppAssets.kEye),
                    SizedBox(
                      width: AppConstants.sizeConfig(context, 0.025).width,
                    ),
                    const Text(
                      '13789',
                      style: TextStyle(
                        color: AppConstants.kPrimaryWhite,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 95,
              left: 20,
              child: Container(
                width: AppConstants.sizeConfig(context, 0.3).width,
                height: AppConstants.sizeConfig(context, 0.04).height,
                decoration: BoxDecoration(
                  color: kGold.withAlpha(12),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: AppConstants.sizeConfig(context, 0.025).width,
                    ),
                    Image.asset(AppAssets.kDollarsIcon),
                    SizedBox(
                      width: AppConstants.sizeConfig(context, 0.025).width,
                    ),
                    const Text(
                      '1356789',
                      style: TextStyle(
                        color: kGold,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Positioned(
              top: 320,
              right: 0,
              child: SideStream(),
            ),
            Positioned(
              top: 400,
              left: 20,
              child: Column(
                children: [
                  Container(
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
