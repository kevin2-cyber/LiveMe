import 'package:flutter/material.dart';

enum Gender { on, off }

class AppRadio extends StatelessWidget {
  final String title;
  final Gender gender;
  final void Function(Gender?)? onChanged;
  const AppRadio(
      {Key? key,
      required this.title,
      required this.gender,
      required this.onChanged})
      : super(key: key);



  @override
  Widget build(BuildContext context) {
    Gender? character;
    return SizedBox(
      width: 160,
      child: ListTile(
        title: Text(title),
        trailing: Radio<Gender>(
          value: gender,
          groupValue: character,
          onChanged: onChanged,
    ),
        ),
  );
  }
}
