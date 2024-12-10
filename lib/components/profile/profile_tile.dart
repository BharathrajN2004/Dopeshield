import 'package:dopeshield/utilities/theme.dart';
import 'package:flutter/material.dart';

import '../common/text.dart';

class ProfileTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function todo;
  const ProfileTile({
    super.key,
    required this.todo,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return GestureDetector(
      onTap: () => todo(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: secondaryColor.withOpacity(.6),
        ),
        height: height * 0.065,
        // color: Colors.amber,
        margin: EdgeInsets.symmetric(horizontal: width * 0.14),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Icon(
                size: aspectRatio * 50,
                icon,
                color: textColor.withOpacity(.7),
              ),
            ),
            CustomText(
              text: text,
            ),
          ],
        ),
      ),
    );
  }
}
