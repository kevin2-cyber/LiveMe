import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:live_me/app/core/core.dart';
import 'package:live_me/app/ui/welcome.dart';

class LiveMeApp extends StatelessWidget {

  const LiveMeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      title: AppConstants.kAppName,
      darkTheme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primaryColorDark: AppConstants.kPrimaryBlack
      ),
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primaryColorLight: AppConstants.kPrimaryWhite,
      ),
      home: const Welcome(),
    );
  }
}
