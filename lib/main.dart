import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:live_me/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  ErrorWidget.builder = (FlutterErrorDetails details) => Material(
        color: Colors.white70,
        child: Center(
          child: Text(
            details.exception.toString(),
            style: const TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.w300,
              fontSize: 18,
            ),
          ),
        ),
      );

  runApp(
      DevicePreview(
        enabled: !kReleaseMode,
          builder: (context) => const LiveMeApp())
  );
}
