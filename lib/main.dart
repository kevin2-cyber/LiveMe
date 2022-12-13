import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:live_me/app/app.dart';

void main() {

  ErrorWidget.builder = (FlutterErrorDetails details) => Material(
        color: Colors.white70,
        child: Center(
          child: Text(
            details.exception.toString(),
            style: GoogleFonts.lexendDeca(
              color: Colors.black38,
              fontWeight: FontWeight.w300,
              fontSize: 18,
            ),
          ),
        ),
      );

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const LiveMeApp());
}
