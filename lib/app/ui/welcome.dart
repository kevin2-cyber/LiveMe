import 'package:flutter/material.dart';
import 'package:live_me/app/ui/login.dart';
import 'package:live_me/app/ui/sign_up.dart';
import 'package:live_me/app/core/core.dart';
import 'package:live_me/app/widgets/app_button.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Center(
              child: Text(
                AppConstants.kAppName,
                style: const TextStyle(
                  fontSize: 53,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 30,
              padding: const EdgeInsets.only(top: 2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.black,
              ),
              child: Text(
                AppConstants.kStreaming,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: AppButton(
                onTapped: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                text: AppConstants.kLogin,
                bgColor: AppConstants.kPrimaryBlack,
                textColor: Colors.white,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: AppButton(
                onTapped: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
                text: AppConstants.kSignUp,
                bgColor: Colors.white70,
                textColor: AppConstants.kPrimaryBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
