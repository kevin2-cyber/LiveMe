import 'package:flutter/material.dart';
import 'package:live_me/app/ui/select.gender.dart';
import 'package:live_me/app/widgets/app.button.dart';
import 'package:live_me/app/core/core.dart';
import 'package:live_me/app/widgets/app.radio.dart';
import 'package:live_me/utils/testing_pages/lists.dart';

import 'home.dart';


class SignUp extends StatefulWidget {
  final TextEditingController? controller;
  const SignUp({Key? key, this.controller}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Gender? newGender = Gender.male;
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
                          suffixIcon:  const Icon(Icons.remove_red_eye_rounded),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // suffixIcon: isVisible ? IconButton(onPressed: onPressed, icon: icon) : Icons.clean_hands,),
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
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: 'Enter mobile number',
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
                          suffix: TextButton(
                            onPressed: (){},
                            child: const Text('Verify'),
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
              const Text(
                  'Gender',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 160,
                    child: ListTile(
                      title: const Text('Male'),
                      trailing: Radio<Gender>(
                        activeColor: AppConstants.kPrimaryBlack,
                        value: Gender.male,
                        groupValue: newGender,
                        onChanged: (Gender? value) {
                          setState(() {
                            newGender = value;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    child: ListTile(
                      title: const Text('Female'),
                      trailing: Radio<Gender>(
                        activeColor: AppConstants.kPrimaryBlack,
                        value: Gender.female,
                        groupValue: newGender,
                        onChanged: (Gender? value) {
                          setState(() {
                            newGender = value;
                          });
                        },
                      ),
                    ),
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
                          MaterialPageRoute(builder: (context) => const ListViewSample()));
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

  void signUp(bool check){
    if(check){
      validateData();
    } else {
      null;
    }
  }

  void validateData(){}
}
