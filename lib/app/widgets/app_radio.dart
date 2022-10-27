import 'package:flutter/material.dart';

enum Gender { on, off }

class AppRadio extends StatefulWidget {
  final String title;
  final Gender gender;
  const AppRadio({Key? key, required this.title, required this.gender}) : super(key: key);

  @override
  State<AppRadio> createState() => _AppRadioState();
}

class _AppRadioState extends State<AppRadio> {
  Gender? _character;
  bool isActive = false;

  get gender => Gender.off;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: ListTile(
        title: Text(widget.title),
        trailing: Radio<Gender>(
          value: isActive ? Gender.off : Gender.on,
          groupValue: _character,
          onChanged: (Gender? value) {
            setState(() {
              _character = value;
            });
          },
        ),
      ),
    );
  }
}
