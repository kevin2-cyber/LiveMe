import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';

import '../widgets/widgets.dart';

class Followers extends StatelessWidget {
  const Followers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var kBorderRadius = BorderRadius.circular(10);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 100,
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
          'Followers',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            SizedBox(
              height: AppConstants.sizeConfig(context, 0.02).height,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: kBorderRadius,
                color: AppConstants.kEditTextNormal,
              ),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                      Icons.search,
                    color: Colors.grey,
                  ),
                  label: const Text(
                      'Search',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: kBorderRadius,
                    borderSide: BorderSide.none,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: kBorderRadius,
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const Divider(),
            SizedBox(
              height: AppConstants.sizeConfig(context, 0.765).height,
              child: ListView(
                scrollDirection: Axis.vertical,
                children:  [
                    CustomListTile(
                      image: AppAssets.kListAvatar,
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.01).height,
                    ),
                    CustomListTile(
                      image: AppAssets.kListAvatar1,
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.01).height,
                    ),
                    CustomListTile(
                      image: AppAssets.kListAvatar1,
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.01).height,
                    ),
                    CustomListTile(
                      image: AppAssets.kListAvatar1,
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.01).height,
                    ),
                    CustomListTile(
                      image: AppAssets.kListAvatar1,
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.01).height,
                    ),
                    CustomListTile(
                      image: AppAssets.kListAvatar1,
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.01).height,
                    ),
                    CustomListTile(
                      image: AppAssets.kListAvatar1,
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.01).height,
                    ),
                    CustomListTile(
                      image: AppAssets.kListAvatar1,
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.01).height,
                    ),
                    CustomListTile(
                      image: AppAssets.kListAvatar1,
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.01).height,
                    ),
                    CustomListTile(
                      image: AppAssets.kListAvatar1,
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.01).height,
                    ),
                    CustomListTile(
                      image: AppAssets.kListAvatar1,
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.01).height,
                    ),
                    CustomListTile(
                      image: AppAssets.kListAvatar1,
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.01).height,
                    ),
                    CustomListTile(
                      image: AppAssets.kListAvatar1,
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.01).height,
                    ),
                    CustomListTile(
                      image: AppAssets.kListAvatar1,
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.01).height,
                    ),
                    CustomListTile(
                      image: AppAssets.kListAvatar1,
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.01).height,
                    ),
                    CustomListTile(
                      image: AppAssets.kListAvatar1,
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.01).height,
                    ),
                    CustomListTile(
                      image: AppAssets.kListAvatar1,
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.01).height,
                    ),
                    CustomListTile(
                      image: AppAssets.kListAvatar1,
                    ),
                    SizedBox(
                      height: AppConstants.sizeConfig(context, 0.01).height,
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}


