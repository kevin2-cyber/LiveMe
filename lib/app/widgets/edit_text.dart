import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constants.dart';

class EditText extends StatelessWidget {
  final String label;
  final bool obscureText;
  final Widget? suffixIcon;

  const EditText({
      Key? key,
      required this.label,
      required this.obscureText,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppConstants.kEditTextNormal,
          ),
          child: TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
              focusColor: AppConstants.kEditTextNormal,
              hintText: label,
              hintStyle: GoogleFonts.poppins(),
              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              suffix: suffixIcon,
            ),
          ),
        ),
      ],
    );
  }
}
