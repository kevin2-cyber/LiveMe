import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/app.dart';

void main() {

  ErrorWidget.builder = (FlutterErrorDetails details) => Material(
        color: CupertinoColors.white,
        child: Center(
          child: Text(
            details.exception.toString(),
            style: GoogleFonts.lexendDeca(
              color: CupertinoColors.black,
              fontWeight: FontWeight.w300,
              fontSize: 18,
            ),
          ),
        ),
      );

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const LiveMeApp());
}
