import 'package:flutter/material.dart';
import 'package:live_me/app/ui/sign_up.dart';

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
      body: Column(
        children: <Widget>[
          const Text('Information'),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          const Text('Please fill Gender and age to moving\nfurther'),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Column(
            children: [
              RadioListTile<Gender>(
                title: const Text('Male'),
                value: Gender.male,
                groupValue: _character,
                activeColor: Colors.black,
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
                activeColor: Colors.black,
                onChanged: (Gender? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
