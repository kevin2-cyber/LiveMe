import 'package:flutter/material.dart';
import 'package:live_me/app/widgets/app_button.dart';
import 'package:live_me/app/widgets/app_radio.dart';
import 'package:live_me/utils/constants.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({Key? key}) : super(key: key);

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  Gender? newGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Information',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text('Please fill Gender and age to moving\nfurther'),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Text(
                'Gender',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
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
              // const Text('Date of Birth'),
              // Row(
              //   children: const [
              //     EditText(label: 'Day', obscureText: false),
              //     EditText(label: 'Month', obscureText: false),
              //     EditText(label: 'Year', obscureText: false),
              //   ],
              // ),
              AppButton(
                  onTapped: () {
                    Navigator.pop(context);
                  },
                  text: 'Submit',
                  bgColor: AppConstants.kPrimaryBlack,
                  textColor: AppConstants.kPrimaryWhite),
            ],
          ),
        ),
      ),
    );
  }
}
