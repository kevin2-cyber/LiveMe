import 'package:flutter/material.dart';

class BottomMessageBox extends StatelessWidget {
  const BottomMessageBox({
    super.key,
    required this.withAlpha,
    required this.kColor2,
  });

  final Color withAlpha;
  final Color kColor2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 41,
          width: 280,
          decoration: BoxDecoration(
            color: withAlpha,
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              label: Text(
                'Type here...',
                style: TextStyle(
                  color: kColor2,
                ),
              ),
              suffixIcon: Icon(
                Icons.send,
                color: kColor2,
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide.none,
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: withAlpha,
              child: const Icon(
                Icons.add,
                color: Color(0xFF0DD9C5),
                size: 20,
              ),
            ),
            const Text(
              'Follow',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            CircleAvatar(
              backgroundColor: withAlpha,
              radius: 20,
              child: Icon(
                Icons.card_giftcard,
                color: const Color(0xFFEDFF82).withAlpha(200),
                size: 20,
              ),
            ),
            const Text(
              'Gift',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}