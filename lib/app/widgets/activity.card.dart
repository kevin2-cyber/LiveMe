import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final Function() onTap;
  final String assetName;
  final String category;
  final Color textColor;
  final Color cardColor;

  const ActivityCard(
      {Key? key,
      required this.onTap,
      required this.assetName,
      required this.category,
        required this.textColor,
        required this.cardColor}
      )
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: cardColor,
        shape: const BeveledRectangleBorder(),
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(assetName),
                ),
              ),
            ),
            Text(
                category,
              style: TextStyle(
                color: textColor,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
