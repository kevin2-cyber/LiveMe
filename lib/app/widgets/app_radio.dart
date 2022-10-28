import 'package:flutter/material.dart';

enum Gender { male, female }

class AppRadio extends StatelessWidget {
  final String title;
  final Gender gender;
  final void Function(Gender?)? onChanged;
  final Gender? character;
  const AppRadio(
      {Key? key,
      required this.title,
      required this.gender,
      required this.onChanged,
        this.character})
      : super(key: key);



  @override
  Widget build(BuildContext context) {
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
