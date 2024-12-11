import 'package:flutter/material.dart';

import '../functions/firebase_auth.dart';
import '../pages/login.dart';
import 'navigation.dart';

class AuthShifter extends StatelessWidget {
  const AuthShifter({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: AuthFB().authStateChanges,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(body: Center(child: CircularProgressIndicator()));
          }
          if (snapshot.hasData && snapshot.data !=null) {
            return Navigation();
          }
          return Login();
        });
  }
}
