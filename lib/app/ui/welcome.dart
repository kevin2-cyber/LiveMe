import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:live_me/app/ui/login.dart';
import 'package:live_me/app/ui/sign_up.dart';
import 'package:live_me/utils/app_assets.dart';
import 'package:live_me/utils/constants.dart';

import '../widgets/app_button.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.kWelcomeBg),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Text(
                AppConstants.kAppName,
                style: GoogleFonts.poppins(
                  fontSize: 53,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              top: 500,
              left: 100,
              right: 100,
              child: Container(
                width: 90,
                height: 30,
                padding: const EdgeInsets.only(top: 2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black,
                ),
                child: Text(
                  AppConstants.kStreaming,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 620,
              left: 30,
              right: 30,
              child: AppButton(
                onTapped: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                text: AppConstants.kLogin,
                bgColor: Colors.black,
                textColor: Colors.white,
              ),
            ),
            Positioned(
              top: 680,
              left: 30,
              right: 30,
              child: AppButton(
                onTapped: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
                text: AppConstants.kSignUp,
                bgColor: Colors.white,
                textColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
