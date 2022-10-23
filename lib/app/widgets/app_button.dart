import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {

  final Function() onTapped;
  final String text;
  final Color bgColor;
  final Color textColor;

  const AppButton({
    required this.onTapped,
    required this.text,
    required this.bgColor,
    required this.textColor,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: MediaQuery.of(context).size.width * 1,
      color: bgColor,
      onPressed: onTapped,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    );
  }
}