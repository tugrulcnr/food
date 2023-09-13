import 'package:flutter/material.dart';
import 'package:food/feathers/auth/forget_password/view/forgot_password_view.dart';
import 'package:food/feathers/auth/login/view/login_view.dart';
import 'package:food/feathers/auth/sipnUp/view/sign_up_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue,
       inputDecorationTheme: const InputDecorationTheme(
        filled: true
       )
      ),
      home: ForgotPasswordView()
    );
  }
}
