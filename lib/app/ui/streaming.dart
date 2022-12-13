import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';

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
            Positioned(
              top: 50,
              right: 200,
              child: Container(
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
              ),
            ),
            Positioned(
              top: 50,
              right: 20,
              child: Container(
                width: AppConstants.sizeConfig(context, 0.23).width,
                height: AppConstants.sizeConfig(context, 0.04).height,
                decoration:  BoxDecoration(
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
                decoration:  BoxDecoration(
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
            Positioned(
              top: 320,
              right: 0,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)
                ),
                  child: Container(
                    height: AppConstants.sizeConfig(context, 0.18).height,
                    width: AppConstants.sizeConfig(context, 0.1).width,
                    decoration: BoxDecoration(
                      color: const Color(0xFF151515).withAlpha(55),
                    ),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
