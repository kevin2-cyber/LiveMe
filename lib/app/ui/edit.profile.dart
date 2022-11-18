import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        backgroundColor: Colors.white,
        title: const Text(
            'Edit Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: GestureDetector(
          onTap: (){
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
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                children: const [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      'Cancel',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
