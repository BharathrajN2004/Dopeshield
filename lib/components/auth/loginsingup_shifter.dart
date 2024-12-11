import 'package:flutter/material.dart';

import '../../pages/login.dart';
import '../../pages/signup.dart';
import '../../utilities/constants.dart';
import '../../utilities/theme.dart';
import '../common/text.dart';

class LoginSingupShifter extends StatelessWidget {
  const LoginSingupShifter({
    super.key,
    required this.shifter,
  });
  final LoginSignup shifter;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // double aspectRatio = MediaQuery.of(context).size.aspectRatio;

    Color fontColor(double opacity) =>
        const Color(0XFF1C2136).withOpacity(opacity);
    Color secondaryColor(double opacity) => Colors.white.withOpacity(opacity);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          text: shifter == LoginSignup.signup
              ? "Already have a account,"
              : "Don't have a account,",
          weight: FontWeight.w700,
          color: fontColor(.6),
        ),
        GestureDetector(
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => shifter == LoginSignup.signup
                  ? const Login()
                  : const Signup(),
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(left: width * 0.02),
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.03,
              vertical: height * 0.008,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: secondaryColor(.5)),
            child: CustomText(
              text: shifter == LoginSignup.signup ? "LOGIN" : "SIGNUP",
              weight: FontWeight.bold,
              color: gradientColor2,
            ),
          ),
        ),
      ],
    );
  }
}
