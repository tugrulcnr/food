import 'package:flutter/material.dart';
import '../../feathers/auth/forget_password/view/forgot_password_view.dart';
import '../../feathers/auth/login/view/login_view.dart';
import '../../feathers/auth/sipnUp/view/sign_up_view.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
    case ForgotPasswordView.routeName:
      return MaterialPageRoute(
          builder: (context) => const ForgotPasswordView());

    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
              body: Center(child: Text("Opps! Page Not Found"))));
  }
}
