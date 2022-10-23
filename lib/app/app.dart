import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const Welcome(),
    );
  }
}
