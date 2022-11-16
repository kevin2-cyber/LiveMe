import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';

class ProfileFragment extends StatelessWidget {
  const ProfileFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
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
                        backgroundColor: Colors.white70,
                        child: Icon(
                            Icons.camera_enhance_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ]
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
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
            height: MediaQuery.of(context).size.height * 0.005,
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
        ],
      ),
    );
  }
}
