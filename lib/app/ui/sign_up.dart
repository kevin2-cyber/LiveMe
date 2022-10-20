import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:live_me/utils/constants.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
                height: 50,
              ),
              editText(label: 'Email', obscureText: false),
              const SizedBox(
                height: 20,
              ),
              editText(label: 'Password', obscureText: true),
            ],
          ),
        ),
      ),
    );
  }
}

Widget editText({label,obscureText = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade400,
        ),
        child: TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            focusColor: Colors.grey.shade400,
            hintText: label,
            contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: AppConstants.kEditTextSelected,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: AppConstants.kEditTextNormal,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
