import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';

class AdvancedSettings extends StatelessWidget {
  const AdvancedSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          'Advanced Settings',
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
          const ListTile(
            title: Text('Verify your number'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          const ListTile(
            title: Text('Notification Settings'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(
            height: AppConstants.sizeConfig(context, 0.007).height,
          ),
          Container(
            width: AppConstants.sizeConfig(context, 1).width,
            height: AppConstants.sizeConfig(context, 0.05).height,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            color: Colors.grey.shade300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                    'Support',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const ListTile(
            title: Text('Terms of Service'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          const ListTile(
            title: Text('Support'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(
            height: AppConstants.sizeConfig(context, 0.007).height,
          ),
          Container(
            width: AppConstants.sizeConfig(context, 1).width,
            height: AppConstants.sizeConfig(context, 0.05).height,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            color: Colors.grey.shade300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                    'Region',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: AppConstants.sizeConfig(context, 0.007).height,
          ),
          ListTile(
            title: const Text('Select Region'),
            trailing: TextButton(onPressed: (){}, child: const Text('India')),
          ),
        ],
      ),
    );
  }
}
