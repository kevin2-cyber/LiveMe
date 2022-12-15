import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:live_me/app/core/core.dart';
import 'package:live_me/app/ui/welcome.dart';

class LiveMeApp extends StatelessWidget {

  const LiveMeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      title: AppConstants.kAppName,
      darkTheme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.robotoTextTheme(),
        primaryTextTheme: GoogleFonts.lexendDecaTextTheme(),
        primaryColorDark: AppConstants.kPrimaryBlack
      ),
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.robotoTextTheme(),
        primaryTextTheme: GoogleFonts.lexendDecaTextTheme(),
        primaryColorLight: AppConstants.kPrimaryWhite,
      ),
      home: const Welcome(),
    );
  }
}
