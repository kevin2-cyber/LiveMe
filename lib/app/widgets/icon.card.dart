import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final String title;
  final String icon;
  const IconCard({Key? key, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
            child: Card(
              elevation: 10,
                child: Image.asset(icon),
            ),
        ),
        Text(
            title,
          style: TextStyle(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
