import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';

import '../../widgets/widgets.dart';

class VideoFragment extends StatelessWidget {
  const VideoFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Videos',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              VideoCard(
                image: AppAssets.kVideoUn,
              ),
              const SizedBox(
                height: 10,
              ),
              VideoCard(
                image: AppAssets.kVideoD,
              ),
              const SizedBox(
                height: 10,
              ),
              VideoCard(
                image: AppAssets.kVideoT,
              ),
              const SizedBox(
                height: 10,
              ),
              VideoCard(
                image: AppAssets.kVideoQ,
              ),
              const SizedBox(
                height: 10,
              ),
              VideoCard(
                image: AppAssets.kVideoUn,
              ),
              const SizedBox(
                height: 10,
              ),
              VideoCard(
                image: AppAssets.kVideoD,
              ),
              const SizedBox(
                height: 10,
              ),
              VideoCard(
                image: AppAssets.kVideoT,
              ),
              const SizedBox(
                height: 10,
              ),
              VideoCard(
                image: AppAssets.kVideoQ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

