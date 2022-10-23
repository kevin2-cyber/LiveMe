import 'package:flutter/material.dart';
import '/utils/constants.dart';
import '/app/ui/welcome.dart';

class LiveMeApp extends StatelessWidget {

  const LiveMeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      title: AppConstants.kAppName,
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      home: const Welcome(),
    );
  }
}
