import 'package:flutter/material.dart';
import 'package:live_me/app/ui/select_gender.dart';
import 'package:live_me/app/widgets/app_button.dart';
import 'package:live_me/utils/constants.dart';
import 'package:live_me/app/widgets/edit_text.dart';
import 'package:live_me/app/ui/login.dart';
import 'package:live_me/utils/testing.dart';

import '../widgets/app_radio.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Gender? newGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    bool isVisible = false;
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
                AppConstants.kSignUp,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 32,
                ),
              ),
              const Text(
                'Please fill information to create an\naccount and sign up to continue.',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              const EditText(label: 'Email', obscureText: false),
              const SizedBox(
                height: 20,
              ),
              EditText(label: 'Password', obscureText: isVisible),
              // suffixIcon: isVisible ? IconButton(onPressed: onPressed, icon: icon) : Icons.clean_hands,),
              const SizedBox(
                height: 20,
              ),
              const EditText(label: 'Enter mobile number', obscureText: false),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  'Gender',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Row(
                children: [
                  AppRadio(
                    title: 'Male',
                    gender: Gender.male,
                    onChanged: (Gender? gender) {
                      setState(() {
                        newGender = gender;
                      });
                    },
                  ),
                  AppRadio(
                    title: 'Female',
                    gender: Gender.female,
                    onChanged: (Gender? gender) {
                      setState(() {
                        newGender = gender;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              AppButton(
                  onTapped: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SelectGender()));
                  },
                  text: AppConstants.kSignUp,
                  bgColor: AppConstants.kPrimaryBlack,
                  textColor: Colors.white
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const MyStatefulWidget()));
                    },
                    child: Text(AppConstants.kLogin),
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
