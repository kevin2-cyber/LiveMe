import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';
import 'package:live_me/app/widgets/icon.card.dart';

import '../../widgets/dance.grid.view.card.dart';

class ProfileFragment extends StatelessWidget {
  const ProfileFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 5,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(AppAssets.kProfileAvatar),
              child: Stack(
                  children: const [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.black,
                        child: Icon(
                            Icons.camera_enhance_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ]
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          const Text(
              'John Doe',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            'Blogger, Designer and Actor',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 0,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text(
                        'Level 12',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Card(
                elevation: 0,
                color: const Color(0xFFF1F1F1),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    children:  [
                      Image.asset(AppAssets.kMedalIcon),
                      const Text(
                        'Leaderboard',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                Column(
                  children:  const [
                    Text(
                        '207',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                        'Followers',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w100
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                 Column(
                   children: const [
                     Text(
                         '27',
                       style: TextStyle(
                         fontSize: 20,
                       ),
                     ),
                     Text(
                         'Following',
                       style: TextStyle(
                         fontSize: 10,
                         fontWeight: FontWeight.w100,
                       ),
                     ),
                   ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Column(
                  children: const [
                    Text(
                        '2107',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                        'Views',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Column(
                  children: const [
                    Text(
                        '100',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                        'Likes',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconCard(title: 'Stream\nSchedule', icon: AppAssets.kCalendarIcon),
              IconCard(title: 'Edit Profile', icon: AppAssets.kEditIcon),
              IconCard(title: 'Share', icon: AppAssets.kSharingIcon),
              IconCard(title: 'Guardian', icon: AppAssets.kSecurityIcon),
              IconCard(title: 'Settings', icon: AppAssets.kSettingsIcon),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          const Divider(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text('Photos'),
                ),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text('Videos'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: AppConstants.sizeConfig(context, 0.3).height,
            width: AppConstants.sizeConfig(context, 1).width,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children:  [
                DanceGridViewCard(
                  image: AppAssets.kDanceUn,
                ),
                DanceGridViewCard(
                  image: AppAssets.kDanceD,
                ),
                DanceGridViewCard(
                  image: AppAssets.kDanceT,
                ),
                DanceGridViewCard(
                  image: AppAssets.kDanceQ,
                ),
                DanceGridViewCard(
                  image: AppAssets.kDanceUn,
                ),
                DanceGridViewCard(
                  image: AppAssets.kDanceD,
                ),
                DanceGridViewCard(
                  image: AppAssets.kDanceT,
                ),
                DanceGridViewCard(
                  image: AppAssets.kDanceQ,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


