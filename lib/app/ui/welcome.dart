import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                width: 100,
                height: 50,
                padding: const EdgeInsets.only(top: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black,
                ),
                child: Text(
                  'SOCIAL STREAMING',
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
                onTapped: () {},
                text: 'Login',
                bgColor: Colors.black,
                textColor: Colors.white,
              ),
            ),
            Positioned(
              top: 680,
              left: 30,
              right: 30,
              child: AppButton(
                onTapped: (){},
                text: 'Sign Up',
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
