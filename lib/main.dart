import 'package:flutter/material.dart';
import 'package:live_me/app/app.dart';

void main(){

  ErrorWidget.builder = (FlutterErrorDetails details) => Material(
    color: Colors.amberAccent.shade100,
    child: Center(
      child: Text(
        details.exception.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w300,
          fontSize: 18,
        ),
      ),
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const LiveMeApp());
}