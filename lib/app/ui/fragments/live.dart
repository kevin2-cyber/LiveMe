import 'package:flutter/material.dart';

import '../../widgets/app.bar.dart';

class LiveFragment extends StatelessWidget {
  const LiveFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LiveMeAppBar(appBarColor: Colors.transparent),
        // ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: [
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.amber,
        //     ),
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.amberAccent,
        //     ),
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.black12,
        //     ),
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.black54,
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
