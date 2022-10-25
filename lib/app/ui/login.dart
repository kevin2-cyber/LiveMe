import 'package:flutter/material.dart';
import 'package:live_me/app/ui/sign_up.dart';
import 'package:live_me/app/widgets/app_button.dart';
import 'package:live_me/app/widgets/edit_text.dart';
import 'package:live_me/utils/constants.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.lightBlue,
                    ),
                    const SizedBox(
                      width: 0.2,
                    ),
                    Text(
                      AppConstants.kBack,
                      style: const TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Text(
                AppConstants.kLogin,
                style: const TextStyle(
                  fontSize: 32,
                ),
              ),
              const Text(
                'Enter your email address and\npassword  to access your account',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              const EditText(label: 'Email', obscureText: false),
              const SizedBox(
                height: 40,
              ),
              const EditText(label: 'Password', obscureText: true),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Forgot Password?'),
                  ),
                ],
              ),
              AppButton(
                  onTapped: () {},
                  text: AppConstants.kLogin,
                  bgColor: AppConstants.kPrimaryBlack,
                  textColor: AppConstants.kPrimaryWhite
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Do\'nt have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const SignUp()));
                      },
                      child: Text(AppConstants.kSignUp),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
