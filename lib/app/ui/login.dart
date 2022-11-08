import 'package:flutter/material.dart';
import 'package:live_me/app/ui/sign.up.dart';
import 'package:live_me/app/widgets/app.button.dart';
import 'package:live_me/app/core/core.dart';

class Login extends StatefulWidget {
  final TextEditingController? controller;
  const Login({Key? key, this.controller}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool obscure = false;

  @override
  Widget build(BuildContext context) {
    var kBorderRadius = BorderRadius.circular(10);
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
                height: 70,
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: kBorderRadius,
                        color: AppConstants.kEditTextNormal,
                      ),
                      child: TextFormField(
                        controller: widget.controller,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          focusColor: AppConstants.kEditTextNormal,
                          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: kBorderRadius,
                            borderSide: BorderSide.none,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: kBorderRadius,
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: kBorderRadius,
                        color: AppConstants.kEditTextNormal,
                      ),
                      child: TextFormField(
                        controller: widget.controller,
                        obscureText: obscure,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          focusColor: AppConstants.kEditTextNormal,
                          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: kBorderRadius,
                            borderSide: BorderSide.none,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: kBorderRadius,
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: obscure ? const Icon(Icons.remove_red_eye_rounded) : const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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

  void login(bool isLoggedIn){
    if(isLoggedIn) {
      validateData();
    } else {
      null;
    }
  }

  void validateData(){}
}
