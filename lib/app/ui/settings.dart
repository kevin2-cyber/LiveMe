import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';
import 'package:live_me/app/ui/advanced.settings.dart';
import 'package:live_me/app/ui/leaderboard.dart';
import 'package:live_me/app/ui/screens.dart';
import 'package:live_me/app/widgets/custom.switch.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          'Settings',
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Privacy',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppConstants.sizeConfig(context, 0.01).height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Private Account'),
                CustomSwitch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: AppConstants.sizeConfig(context, 0.01).height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Private Follow List'),
                CustomSwitch(
                  value: isOn,
                  onChanged: (value) {
                    setState(() {
                      isOn = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: AppConstants.sizeConfig(context, 0.01).height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'User Settings',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.calendar_today_outlined),
              ),
              title: Text('Stream Schedule'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              leading: CircleAvatar(
                backgroundColor: Colors.pink,
                child: Icon(Icons.diamond_outlined),
              ),
              title: Text('Premium'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Image.asset(AppAssets.kAwardVector),
              ),
              title: const Text('Achievements'),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              leading: CircleAvatar(
                backgroundColor: Colors.purple.shade300,
                child: Image.asset(AppAssets.kDollarIcon),
              ),
              title: const Text('Buy Coins'),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(Icons.account_balance_wallet),
              ),
              title: Text('My revenue'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Image.asset(AppAssets.kPrizeIcon),
              ),
              title: const Text('My Prize'),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              leading: CircleAvatar(
                backgroundColor: const Color(0xFFF77943),
                child: Image.asset(AppAssets.kGlyph),
              ),
              title: const Text('Leaderboard Invisible Setting'),
              trailing: GestureDetector(
                child: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Leaderboard()));
                },
              ),
            ),
            SizedBox(
              height: AppConstants.sizeConfig(context, 0.01).height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  height: 50,
                  minWidth: AppConstants.sizeConfig(context, 0.45).width,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Welcome()));
                  },
                  color: AppConstants.kPrimaryBlack,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'Logout',
                    style: TextStyle(
                      color: AppConstants.kPrimaryWhite,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                MaterialButton(
                  height: 50,
                  minWidth: AppConstants.sizeConfig(context, 0.45).width,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AdvancedSettings()));
                  },
                  color: AppConstants.kPrimaryWhite,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'Advanced Settings',
                    style: TextStyle(
                      color: AppConstants.kPrimaryBlack,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
