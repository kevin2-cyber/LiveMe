import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leadingWidth: 100,
      elevation: 1,
      backgroundColor: Colors.white,
      title: const Text(
        'Leaderboard',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Row(
          children: const [
            Icon(
              Icons.arrow_back_ios_new,
              color: Colors.blue,
            ),
            Text(
              'Back',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(
              children: const [
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Cancel',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
      body: Column(
        children: [
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              onPressed: (){},
              child: Row(
                children: [
                    Expanded(
                      child: Container(
                        height: AppConstants.sizeConfig(context, 0.04).height,
                        width: AppConstants.sizeConfig(context, 1).width,
                        color: Colors.black,
                        child: const Text('Today'),
                      ),
                    ),
                    Container(),
                    Container(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
