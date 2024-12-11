import 'package:flutter/material.dart';

import '../../components/common/text.dart';
import 'firebase_auth.dart';

Future createUser({
  required String email,
  required String password,
  required Map<String, String> generatedData,
  required BuildContext context,
}) async {
  AuthFB()
      .createUserWithEmailAndPassword(
    email: email,
    password: password,
  )
      .then((value) async {
    AuthFB().currentUser?.updateDisplayName(generatedData["name"]);
  }).catchError((error) {
    Color secondaryColor(double opacity) => Colors.white.withOpacity(opacity);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: secondaryColor(1),
        content: CustomText(
          text: error.toString(),
          maxLine: 3,
          align: TextAlign.center,
        ),
      ),
    );
  });
}
