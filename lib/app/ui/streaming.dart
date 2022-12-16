import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';

import '../widgets/side.stream.dart';
import '../widgets/stars.dart';
import '../widgets/stream.tile.dart';

class Streaming extends StatelessWidget {
  const Streaming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const kGold = Color(0xFFFBBF00);
    const kColor2 = Color(0xFFDFDFDF);
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
              top: 490,
              left: 20,
              child: Column(
                children: const [
                  StreamedTiles(),
                  SizedBox(
                    height: 20,
                  ),
                  StreamedTiles(),
                  SizedBox(
                    height: 20,
                  ),
                  StreamedTiles(),
                  SizedBox(
                    height: 20,
                  ),
                  StreamedTiles(),
                  SizedBox(
                    height: 20,
                  ),
                  StreamedTiles(),
                ],
              ),
            ),
            Positioned(
              top: 800,
              left: 20,
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800.withAlpha(150),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child:  const Center(
                      child: Text(
                          'Hello!!',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 110,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800.withAlpha(150),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child:  const Center(
                      child: Text(
                        'How\'s you',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 05,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade800.withAlpha(150),
                    child: Image.asset(AppAssets.kEmojiUn),
                  ),
                  const SizedBox(
                    width: 05,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade800.withAlpha(150),
                    child: Image.asset(AppAssets.kEmojiD),
                  ),
                  const SizedBox(
                    width: 05,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade800.withAlpha(150),
                    child: Image.asset(AppAssets.kEmojiT),
                  ),
                  const SizedBox(
                    width: 05,
                  ),
                  Container(
                    width: 70,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800.withAlpha(150),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child:  const Center(
                      child: Text(
                        'Great',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 850,
              left: 20,
              child: Row(
                children: [
                  Container(
                    height: 41,
                    width: 241,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800.withAlpha(150),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        label: Text(
                            'Type here...',
                          style: TextStyle(
                            color: kColor2,
                          ),
                        ),
                        suffixIcon: Icon(
                            Icons.send,
                          color: kColor2,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Image.asset(AppAssets.kFollowIcon),
                      Text(
                          'Follow',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Image.asset(
                          AppAssets.kGiftIcon,
                        height: 70,
                        width: 70,
                      ),
                      Text(
                        'Gift',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
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


