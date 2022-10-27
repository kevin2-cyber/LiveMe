import 'package:flutter/material.dart';

enum Gender { male, female }

class AppRadio extends StatefulWidget {
  final String title;
  const AppRadio({Key? key, required this.title}) : super(key: key);

  @override
  State<AppRadio> createState() => _AppRadioState();
}

class _AppRadioState extends State<AppRadio> {
  Gender? _character = Gender.male;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      trailing: Radio<Gender>(
        value: Gender.male,
        groupValue: _character,
        onChanged: (Gender? value) {
          _character = value;
        },
      ),
    );
  }
}
