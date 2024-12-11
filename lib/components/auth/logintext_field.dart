import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final String labelText;
  final bool? isVisible;
  final IconData icon;
  final TextEditingController controller;
  final double bottomMargin;
  final bool isReadOnly;
  final VoidCallback? onTap;

  final IconData? suffixIconData;

  LoginTextField({
    this.isVisible,
    this.onTap,
    this.suffixIconData,
    super.key,
    required this.labelText,
    required this.icon,
    required this.controller,
    required this.bottomMargin,
    this.isReadOnly = false,
  });
  
  late bool showPassword;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;

    Color fontColor(double opacity) =>
        const Color(0XFF1C2136).withOpacity(opacity);
    Color secondaryColor(double opacity) => Colors.white.withOpacity(opacity);

    return Container(
      margin: EdgeInsets.only(bottom: height * bottomMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: secondaryColor(.4),
      ),
      child: TextField(
        readOnly: isReadOnly,
        controller: controller,
        obscureText: isVisible ?? false,
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: fontColor(.8),
          fontSize: 32 * aspectRatio,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          border: InputBorder.none,
          prefixIcon: Icon(
            icon,
            color: fontColor(.8),
            size: aspectRatio * 55,
          ),
          suffixIcon: suffixIconData != null
              ? GestureDetector(
                  onTap: onTap,
                  child: Icon(
                    suffixIconData!,
                    color: fontColor(.8),
                    size: aspectRatio * 55,
                  ),
                )
              : const SizedBox(),
          labelText: labelText,
          labelStyle: TextStyle(
            fontWeight: FontWeight.w800,
            color: fontColor(.7),
            fontSize: 32 * aspectRatio
          ),
        ),
      ),
    );
  }
}
