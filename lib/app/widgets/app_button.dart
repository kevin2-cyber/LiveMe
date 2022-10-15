import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: bgColor,
      ),
      child: TextButton(
        onPressed: onTapped,
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      ),
    );
  }
}