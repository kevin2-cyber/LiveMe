import 'package:flutter/material.dart';

class LiveMe extends StatelessWidget {

  const LiveMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      home: const Scaffold(),
    );
  }
}
