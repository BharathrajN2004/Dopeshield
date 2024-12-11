import 'package:flutter/material.dart';
import '../../utilities/theme.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
    this.controller,
    required this.hintText,
    required this.icon,
    required this.inputType,
    this.readOnly = false,
    this.bottomMar,
    this.visibleText = true,
    this.listener,
    this.initialValue,
    this.isAuth = false,
  });
  final TextEditingController? controller;
  final String hintText;
  final IconData icon;
  final TextInputType inputType;
  final bool readOnly;
  final double? bottomMar;
  final bool visibleText;
  final Function? listener;
  final String? initialValue;
  final bool? isAuth;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return Container(
      height: height * 0.045,
      margin: EdgeInsets.only(
        bottom: bottomMar ?? height * 0.0175,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: secondaryColor.withOpacity(.4),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: width * .03),
            height: height * 0.045,
            width: width * 0.1,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  gradientColor2.withOpacity(.6),
                  gradientColor2.withOpacity(.3),
                ],
              ),
            ),
            child: Icon(
              icon,
              color: secondaryColor,
              size: aspectRatio * 45,
            ),
          ),
          Expanded(
            child: TextFormField(
              readOnly: readOnly,
              initialValue: initialValue,
              controller: controller,
              keyboardType: inputType,
              onChanged: (value) {
                if (listener != null) {
                  listener!(value);
                }
              },
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 32 * aspectRatio,
                color: textColor.withOpacity(.8),
                // height: 1,
              ),
              cursorColor: gradientColor2,
              cursorWidth: 2,
              obscureText: !visibleText,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 30 * aspectRatio,
                  color: textColor.withOpacity(.5),
                  // height: 1,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  bottom: height * 0.015,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
