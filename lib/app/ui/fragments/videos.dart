import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';

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
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              VideoCard(),
              SizedBox(
                height: 10,
              ),
              VideoCard(),
              SizedBox(
                height: 10,
              ),
              VideoCard(),
              SizedBox(
                height: 10,
              ),
              VideoCard(),
              SizedBox(
                height: 10,
              ),
              VideoCard(),
              SizedBox(
                height: 10,
              ),
              VideoCard(),
              SizedBox(
                height: 10,
              ),
              VideoCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  const VideoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(AppAssets.kVideoUn),
            fit: BoxFit.cover,
          )),
      child: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.07,
            left: MediaQuery.of(context).size.width * 0.43,
            child: Image.asset(AppAssets.kPlayBtn),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.17,
            left: MediaQuery.of(context).size.width * 0.05,
            child: Row(
              children: [
                Image.asset(AppAssets.kHeartLightIcon),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  '1125',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(AppAssets.kCommentLightIcon),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  '125',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(AppAssets.kShareLightIcon),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  '675',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
