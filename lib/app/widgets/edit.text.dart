import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';

class EditText extends StatefulWidget {
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
  State<EditText> createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {

  final _formKey = GlobalKey<FormState>();
  late TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppConstants.kEditTextNormal,
            ),
            child: TextFormField(
              controller: _controller,
              obscureText: widget.obscureText,
              decoration: InputDecoration(
                focusColor: AppConstants.kEditTextNormal,
                hintText: widget.label,
                contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                suffix: widget.suffixIcon,
                suffixIcon: const Icon(Icons.panorama_fish_eye),
              ),
            ),
          ),
        ],
      ),
    );
  }
}