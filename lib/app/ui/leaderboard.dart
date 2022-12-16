
import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';
import 'package:live_me/app/model/leaderboard.model.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool hasPosition = false;
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
          DefaultTabController(
            length: 3,
            child: Container(
              height: 45,
              width: AppConstants.sizeConfig(context, 1).width,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
                border: Border(
                  right: BorderSide(),
                  left: BorderSide(),
                  bottom: BorderSide(),
                  top: BorderSide()
                ),
              ),
              child: const TabBar(
                indicator: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                labelColor: Colors .white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(text: 'Today'),
                  Tab(text: 'Week'),
                  Tab(text: 'Month'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: AppConstants.sizeConfig(context, 0.02).height,
          ),
          Container(
            height: AppConstants.sizeConfig(context, 0.6).height,
            padding: const EdgeInsets.all(16.0),
            child: ListView.separated(
              itemCount: samples.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 342,
                  height: 70,
                  decoration: BoxDecoration(
                    color: const Color(0xFF979797).withAlpha(10),
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: AppConstants.sizeConfig(context, 0.02).width,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(samples[index].avatar),
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(10))
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: hasPosition ? Text(
                                  samples[index].ranking.toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  backgroundColor: Colors.orange,
                                ),
                              ) : Text(''),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: AppConstants.sizeConfig(context, 0.02).width,
                      ),
                      Text(samples[index].name),
                      SizedBox(
                        width: AppConstants.sizeConfig(context, 0.34).width,
                      ),
                      Image.asset(AppAssets.kDollarsIcon),
                      SizedBox(
                        width: AppConstants.sizeConfig(context, 0.01).width,
                      ),
                      Text(samples[index].amount),
                      SizedBox(
                        width: AppConstants.sizeConfig(context, 0.02).width,
                      ),
                    ],
                  ),
                );
              }, separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 20,),
            ),
          ),
        ],
      ),
    );
  }
}
