import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';
import 'package:live_me/app/widgets/activity_card.dart';

import '../../widgets/app.bar.dart';
import '../../widgets/grid.view.card.dart';

class LiveFragment extends StatelessWidget {
  const LiveFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      'All',
      'Category 1',
      'Category 2',
      'Category 3',
      'Category 4',
      'Category 5',
      'Category 6',
      'Category 7'
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
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width,
          color: Colors.white70,
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: categories.map((category) {
              return GestureDetector(
                onTap: () {},
                child: Card(
                  elevation: 0,
                  child: Text(category),
                ),
              );
            }).toList(),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.45,
          width: MediaQuery.of(context).size.width,
          child: GridView.count(
            primary: false,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              GridViewCard(
                cardImage: AppAssets.kCardImageUn,
                cardTitle: 'Sophie Owens',
                country: 'United States',
              ),
              GridViewCard(
                cardImage: AppAssets.kCardImageD,
                cardTitle: 'Leonela Cox',
                country: 'United States',
              ),
              GridViewCard(
                cardImage: AppAssets.kCardImageT,
                cardTitle: 'Omid Armin',
                country: 'United States',
              ),
              GridViewCard(
                cardImage: AppAssets.kCardImageQ,
                cardTitle: 'Frankie Cordoba',
                country: 'United States',
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.kCardImageC),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.kCardImageS),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.kCardImageUn),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.kCardImageD),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.kCardImageT),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
