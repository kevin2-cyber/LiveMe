import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:live_me/utils/constants.dart';

import '../widgets/edit_text.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
                      style: GoogleFonts.poppins(
                        color: Colors.lightBlue,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                  AppConstants.kSignUp,
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Please fill information to create an\naccount and sign up to continue.',
                style: GoogleFonts.poppins(
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 90,
              ),
               EditText(label: 'Email', obscureText: false,),
              const SizedBox(
                height: 40,
              ),
              EditText(label: 'Password', obscureText: isVisible, suffixIcon: isVisible ? IconButton(onPressed: onPressed, icon: icon) : Icons.clean_hands,),
              const SizedBox(
                height: 40,
              ),
              EditText(label: 'Enter mobile number', obscureText: false),
            ],
          ),
        ),
      ),
    );
  }
}

