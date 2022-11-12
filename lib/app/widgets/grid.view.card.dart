import 'package:flutter/material.dart';


class GridViewCard extends StatelessWidget {
  final String cardImage;
  final String cardTitle;
  final String country;
  const GridViewCard({
    super.key,
    required this.cardImage,
    required this.cardTitle,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(cardImage),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.17,
            left: MediaQuery.of(context).size.width * 0.05,
            child: Column(
              children:  [
                Text(
                  cardTitle,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.white,
                  ),
                ),
                Text(
                  country,
                  style: const TextStyle(
                    fontSize: 9,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.17,
            left: MediaQuery.of(context).size.width * 0.23,
            child: Card(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      'Level 12',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
