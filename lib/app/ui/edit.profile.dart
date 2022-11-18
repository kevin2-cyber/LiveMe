import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: AppConstants.sizeConfig(context, 1).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                color: AppConstants.kEditTextNormal,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text('username'),
                  hintText: 'username',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Container(
              width: AppConstants.sizeConfig(context, 1).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                color: AppConstants.kEditTextNormal,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text('Full Name'),
                  hintText: 'John Doe',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Container(
              width: AppConstants.sizeConfig(context, 1).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                color: AppConstants.kEditTextNormal,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text('Bio'),
                  hintText: 'Bio',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Container(
              width: AppConstants.sizeConfig(context, 1).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                color: AppConstants.kEditTextNormal,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text('Website'),
                  hintText: 'Website',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Container(
              width: AppConstants.sizeConfig(context, 1).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                color: AppConstants.kEditTextNormal,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text('Gender'),
                  hintText: 'Male',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Container(
              width: AppConstants.sizeConfig(context, 1).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                color: AppConstants.kEditTextNormal,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text('DOB'),
                  hintText: 'DOB',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Container(
              width: AppConstants.sizeConfig(context, 1).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                color: AppConstants.kEditTextNormal,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text('Email'),
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
