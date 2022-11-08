import 'package:flutter/material.dart';

import '../../widgets/app.bar.dart';

class LiveFragment extends StatelessWidget {
  const LiveFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        LiveMeAppBar(appBarColor: Colors.transparent),
      ],
    );
  }
}
