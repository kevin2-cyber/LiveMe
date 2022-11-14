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
      ),
      body: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(AppAssets.kProfileAvatar),
          ),
        ],
      ),
    );
  }
}
