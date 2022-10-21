import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class EditText extends StatelessWidget {
  final String label;
  final bool obscureText;

  const EditText({
      Key? key,
      required this.label,
      required this.obscureText
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade400,
          ),
          child: TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
              focusColor: Colors.grey.shade400,
              hintText: label,
              contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: AppConstants.kEditTextSelected,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: AppConstants.kEditTextNormal,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
