import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';
import 'package:live_me/app/widgets/activity_card.dart';

import '../../widgets/app.bar.dart';

class LiveFragment extends StatelessWidget {
  const LiveFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> cards = [
      const Text('All'),
      const Text('Category 1'),
      const Text('Category 2'),
      const Text('Category 3'),
      const Text('Category 4'),
    ];

    return Column(
      children: [
        const LiveMeAppBar(appBarColor: Colors.transparent),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ActivityCard(
              onTap: () {},
              assetName: AppAssets.kEventIcon,
              category: 'Event',
              textColor: Colors.black,
              cardColor: Colors.white,
            ),
            ActivityCard(
              onTap: () {},
              assetName: AppAssets.kFireIcon,
              category: 'Hot',
              textColor: Colors.white,
              cardColor: Colors.black,
            ),
            ActivityCard(
              onTap: () {},
              assetName: AppAssets.kLiveIcon,
              category: 'Live+',
              textColor: Colors.black,
              cardColor: Colors.white,
            ),
            ActivityCard(
              onTap: () {},
              assetName: AppAssets.kMusicIcon,
              category: 'Music',
              textColor: Colors.black,
              cardColor: Colors.white,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 139,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  left: 310,
                  child: Image.asset(
                    AppAssets.kAwardIcon,
                  ),
                ),
                const Positioned(
                  top: 30,
                  left: 30,
                  child: Text(
                    'Win \$10!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
                const Positioned(
                  top: 60,
                  left: 30,
                  child: Text(
                    'Today\'s highest token balance wins!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                const Positioned(
                  top: 90,
                  left: 30,
                  child: Text(
                    'Contest Ends in: 12h 18m',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: cards.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.black54,
                child: cards.elementAt(index),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        ),
      ],
    );
  }
}
