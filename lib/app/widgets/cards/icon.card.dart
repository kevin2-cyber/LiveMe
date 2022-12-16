import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final String title;
  final String icon;
  final Function()? onTap;
  const IconCard({Key? key, required this.title, required this.icon, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            backgroundColor: Colors.white,
              child: Card(
                elevation: 10,
                  child: Image.asset(icon),
              ),
          ),
        ),
        Text(
            title,
          style: const TextStyle(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
