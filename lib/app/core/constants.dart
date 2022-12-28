
import 'package:flutter/cupertino.dart';

class Constants {

  // strings
  static String kAppName = 'LiveMe';
  static String kLogin = 'Login';
  static String kSignUp = 'Sign Up';
  static String kStreaming = 'SOCIAL STREAMING';
  static String kBack = 'Back';

  // colors
  static const kEditTextSelected = Color(0xFF929292);
  static const kEditTextNormal = Color(0xFFF2F2F7);
  static const kPrimaryBlack = Color(0xD90F0F0F);
  static const kPrimaryWhite = Color(0xFFE5E5E5);

  // size configuration
  static Size sizeConfig(BuildContext context, double size) {
    var kSpacingX = MediaQuery.of(context).size;
    return kSpacingX * size;
  }
}