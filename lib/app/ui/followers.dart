import 'package:flutter/material.dart';

class Followers extends StatelessWidget {
  const Followers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 100,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: const [
              Icon(
                Icons.arrow_back_ios_new,
                color: Colors.blue,
              ),
              Text(
                'Back',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        title: const Text(
          'Followers',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
