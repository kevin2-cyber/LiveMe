import 'package:flutter/material.dart';

import '../core/app.assets.dart';

class ScrollCard extends StatelessWidget {
  const ScrollCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(
                    AppAssets.kJumpAvatar,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            title: const Text(
              'Marisa Labrone',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            subtitle: const Text(
              '12 Min',
              style: TextStyle(
                fontSize: 11,
              ),
            ),
            trailing: OutlinedButton(
              onPressed: (){},
              child: const Text(
                'Follow',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Divider(
            thickness: 1.0,
            color: Colors.black12,
          ),
          const Text('The State of Utah in the united state is home to lots\n of beautiful parks, beaches'),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Image.asset(
            AppAssets.kSinging,
            height: 180,
            width: MediaQuery.of(context).size.width * 0.9,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(AppAssets.kHeartIcon),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text('1125'),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(AppAssets.kCommentIcon),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text('Comment')
                  ],
                ),
                Row(
                  children: [
                    Image.asset(AppAssets.kShareIcon),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text('Share')
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
        ],
      ),
    );
  }
}