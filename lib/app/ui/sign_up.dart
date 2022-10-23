import 'package:flutter/material.dart';
import 'package:live_me/utils/constants.dart';

import '../widgets/edit_text.dart';

enum Gender {
  male,
  female
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  Gender? _character = Gender.male;

  @override
  Widget build(BuildContext context) {
    bool isVisible = false;
    String? gender;
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
                onTap: (){
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
                height: 90,
              ),
               const EditText(label: 'Email', obscureText: false),
              const SizedBox(
                height: 40,
              ),
              EditText(label: 'Password', obscureText: isVisible),
                // suffixIcon: isVisible ? IconButton(onPressed: onPressed, icon: icon) : Icons.clean_hands,),
              const SizedBox(
                height: 40,
              ),
              const EditText(label: 'Enter mobile number', obscureText: false),
              const SizedBox(
                height: 20,
              ),
              const Text('Gender'),
              Column(
                children: [
                  ListTile(
                    title: const Text('Male'),
                    leading: Radio<Gender>(
                      value: Gender.male,
                      groupValue: _character,
                      onChanged: (Gender? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Female'),
                    leading: Radio<Gender>(
                      value: Gender.female,
                      groupValue: _character,
                      onChanged: (Gender? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
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

