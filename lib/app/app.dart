import 'package:flutter/cupertino.dart';
import 'package:live_me/app/ui/welcome.dart';

class LiveMeApp extends StatelessWidget {
  const LiveMeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,
      //{bool isDark = false}
      ) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'LiveMe',
      theme: CupertinoThemeData(
        brightness: Brightness.light,
      ),
      home: Welcome(),
    );
  }
}
