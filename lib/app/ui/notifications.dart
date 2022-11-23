import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        elevation: 1,
        backgroundColor: Colors.white,
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
        title: const Text(
            'Notifications',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(AppAssets.kListAvatar),
              ),
              title: Text(
                  '12 April 2020',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              subtitle: const Text(
                'Marisa Labrone started following you',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            const Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(AppAssets.kListAvatar),
              ),
              title: Text(
                '12 April 2020',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              subtitle: const Text(
                'Marisa Labrone Liked Your Photo',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            const Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(AppAssets.kListAvatar1),
              ),
              title: Text(
                'Today 2m Ago',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              subtitle: const Text(
                'Marisa Labrone started following you',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
