import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../components/common/photo_picker.dart';
import '../../components/auth/loginsingup_shifter.dart';
import '../../components/common/footer.dart';

import '../../components/common/text.dart';
import '../components/common/custom_input_field.dart';
import '../functions/create_user.dart';
import '../utilities/constants.dart';
import '../utilities/theme.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController idCtr = TextEditingController();
  TextEditingController nameCtr = TextEditingController();
  TextEditingController emailCtr = TextEditingController();
  TextEditingController passwordCtr = TextEditingController();

  Map<String, String> generatedData = {};
  Map<File, String> photo = {};

  void setPhoto(File photo, String photoName) {
    setState(() {
      this.photo = {photo: photoName};
    });
  }

  @override
  void dispose() {
    emailCtr.dispose();
    passwordCtr.dispose();
    idCtr.dispose();
    nameCtr.dispose();
    super.dispose();
  }

  void _createUser() async {
    setState(() {
      generatedData["name"] = nameCtr.text.trim();
      generatedData["password"] = passwordCtr.text.trim();
      generatedData["email"] = emailCtr.text.trim();
    });
    await createUser(
      email: emailCtr.text.trim(),
      password: passwordCtr.text.trim(),
      generatedData: generatedData,
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // double aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffDADEEC),
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: height * 0.025,
              left: width * 0.02,
              child: Image.asset(
                "assets/images/logo.png",
                height: height * .1,
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              top: height * .06,
              left: width * .25,
              child: ShaderMask(
                shaderCallback: (bounds) => linearGradient.createShader(bounds),
                child: const CustomText(
                  text: "DopeShield",
                  weight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: -height * .035,
              right: -width * .15,
              child: LottieBuilder.asset("assets/json/robot.json",
                  height: height * .3),
            ),
            Container(
              width: width,
              padding: EdgeInsets.only(
                  left: width * 0.05, right: width * 0.05, top: height * 0.2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: "SIGNUP",
                    size: 40,
                    color: textColor,
                    weight: FontWeight.w900,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  CustomText(
                    text: "Create a account to continue",
                    size: 36,
                    color: textColor.withOpacity(.6),
                    weight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  PhotoPicker(
                    setter: setPhoto,
                    from: From.add,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  CustomInputField(
                    isAuth: true,
                    controller: nameCtr,
                    hintText: "NAME",
                    icon: Icons.person_rounded,
                    inputType: TextInputType.text,
                  ),
                  CustomInputField(
                    isAuth: true,
                    controller: emailCtr,
                    hintText: "EMAIL",
                    icon: Icons.email_rounded,
                    inputType: TextInputType.emailAddress,
                  ),
                  CustomInputField(
                    isAuth: true,
                    controller: passwordCtr,
                    hintText: "PASSWORD",
                    icon: Icons.password_rounded,
                    inputType: TextInputType.visiblePassword,
                    visibleText: false,
                  ),
                  GestureDetector(
                    onTap: () => _createUser(),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: AnimatedContainer(
                        duration: Durations.medium4,
                        margin: EdgeInsets.only(top: height * 0.04),
                        padding: EdgeInsets.symmetric(vertical: height * .0125),
                        width: width * 0.325,
                        decoration: BoxDecoration(
                          color: gradientColor2
                              .withOpacity(generatedData.isNotEmpty ? 1 : .5),
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: generatedData.isNotEmpty
                              ? [
                                  BoxShadow(
                                    color: gradientColor2.withOpacity(.2),
                                    blurRadius: 12,
                                    offset: const Offset(-4, -4),
                                  ),
                                  BoxShadow(
                                    color: gradientColor2.withOpacity(.2),
                                    blurRadius: 16,
                                    offset: const Offset(4, 4),
                                  ),
                                ]
                              : [],
                        ),
                        alignment: Alignment.center,
                        child: const CustomText(
                          weight: FontWeight.bold,
                          text: "SIGNUP",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const LoginSingupShifter(shifter: LoginSignup.signup),
                  const Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
