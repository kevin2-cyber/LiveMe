import 'package:flutter/material.dart';
import 'package:live_me/app/ui/sign_up.dart';
import 'package:live_me/app/widgets/app_button.dart';
import 'package:live_me/app/widgets/edit_text.dart';
import 'package:live_me/utils/constants.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({Key? key}) : super(key: key);

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  Gender? _character = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('Information'),
              const Text('Please fill Gender and age to moving\nfurther'),
              Column(
                children: [
                  RadioListTile<Gender>(
                    title: const Text('Male'),
                    value: Gender.male,
                    groupValue: _character,
                    activeColor: AppConstants.kPrimaryBlack,
                    onChanged: (Gender? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  RadioListTile<Gender>(
                    title: const Text('Female'),
                    value: Gender.female,
                    groupValue: _character,
                    activeColor: AppConstants.kPrimaryBlack,
                    onChanged: (Gender? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ],
              ),
              const Text('Date of Birth'),
              Row(
                children: const [
                  EditText(label: 'Day', obscureText: false),
                  EditText(label: 'Month', obscureText: false),
                  EditText(label: 'Year', obscureText: false),
                ],
              ),
              AppButton(
                  onTapped: () {},
                  text: 'Submit',
                  bgColor: AppConstants.kPrimaryBlack,
                  textColor: AppConstants.kPrimaryWhite
              ),
            ],
          ),
        ),
      ),
    );
  }
}
