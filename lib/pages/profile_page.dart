import 'package:dopeshield/utilities/theme.dart';
import 'package:flutter/material.dart';

import '../components/common/network_image.dart';
import '../components/common/text.dart';
import '../components/profile/profile_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: height * 0.02,
        ),
        Align(
          alignment: Alignment.center,
          child: CustomText(
            text: "PROFILE",
            size: 40,
            weight: FontWeight.w900,
            color: textColor.withOpacity(.8),
          ),
        ),
        SizedBox(
          height: height * 0.03,
        ),
        // userData.userRole != null
        //     ?
        CustomNetworkImage(
          size: aspectRatio * 250,
          radius: width,
          url: "https://cdn-icons-png.flaticon.com/512/149/149071.png",
          padding: aspectRatio * 8,
          backgroundColor: secondaryColor,
        ),
        // : const SizedBox(),
        SizedBox(height: height * 0.02),
        CustomText(
          text: "Bharathraj N",
          size: 36,
          weight: FontWeight.w800,
          color: textColor.withOpacity(.8),
        ),
        SizedBox(height: height * 0.005),
        CustomText(
          text: "bharathrajnarashiman@gmail.com",
          color: textColor.withOpacity(.6),
        ),
        SizedBox(height: height * 0.05),
        ProfileTile(
            text: 'Edit Profile', icon: Icons.edit_outlined, todo: () {}),
        SizedBox(
          height: height * 0.03,
        ),
        ProfileTile(
            text: 'Help', icon: Icons.help_outline_outlined, todo: () {}),
        SizedBox(
          height: height * 0.03,
        ),
        ProfileTile(text: 'History', icon: Icons.history, todo: () {}),
        SizedBox(
          height: height * 0.03,
        ),
        ProfileTile(
          text: 'Logout',
          icon: Icons.logout_outlined,
          todo: () {
            // AuthFB().signOut(ref: ref);
            // Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
