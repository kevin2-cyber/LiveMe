import 'package:flutter/material.dart';
import 'package:live_me/app/core/core.dart';

class CustomListTile extends StatelessWidget {
  final String image;
  const CustomListTile({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
        SizedBox(
          width: AppConstants.sizeConfig(context, 0.03).width,
        ),
        Column(
          children: [
            const Text(
              'App Name',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w100,
              ),
            ),
            Text(
              'Real Name',
              style: TextStyle(
                fontSize: 13.5,
                fontWeight: FontWeight.w100,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
        SizedBox(
          width: AppConstants.sizeConfig(context, 0.18).width,
        ),
        Row(
          children: [
            MaterialButton(
              color: AppConstants.kPrimaryBlack,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              minWidth: AppConstants.sizeConfig(context, 0.03).width,
              onPressed: (){},
              child: const Text(
                'Follow',
                style: TextStyle(
                  color: AppConstants.kPrimaryWhite,
                ),
              ),
            ),
            SizedBox(
              width: AppConstants.sizeConfig(context, 0.018).width,
            ),
            MaterialButton(
              color: AppConstants.kPrimaryWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              minWidth: AppConstants.sizeConfig(context, 0.03).width,
              onPressed: (){},
              child: const Text('Remove'),
            ),
          ],
        ),
      ],
    );
  }
}