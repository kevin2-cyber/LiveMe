import 'package:flutter/material.dart';

import '../core/core.dart';

class TextSuggestions extends StatelessWidget {
  const TextSuggestions({
    super.key,
    required this.withAlpha,
  });

  final Color withAlpha;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70,
          height: 40,
          decoration: BoxDecoration(
            color: withAlpha,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child:  const Center(
            child: Text(
              'Hello!!',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 110,
          height: 40,
          decoration: BoxDecoration(
            color: withAlpha,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child:  const Center(
            child: Text(
              'How\'s you',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 05,
        ),
        CircleAvatar(
          backgroundColor: withAlpha,
          child: Image.asset(AppAssets.kEmojiUn),
        ),
        const SizedBox(
          width: 05,
        ),
        CircleAvatar(
          backgroundColor: withAlpha,
          child: Image.asset(AppAssets.kEmojiD),
        ),
        const SizedBox(
          width: 05,
        ),
        CircleAvatar(
          backgroundColor: withAlpha,
          child: Image.asset(AppAssets.kEmojiT),
        ),
        const SizedBox(
          width: 05,
        ),
        Container(
          width: 70,
          height: 40,
          decoration: BoxDecoration(
            color: withAlpha,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child:  const Center(
            child: Text(
              'Great',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}