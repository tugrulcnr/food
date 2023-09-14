import 'package:flutter/material.dart';
import 'package:food/common/widgets/auth_stack_widget.dart';
import 'package:food/feathers/auth/login/_ui/cardButton.dart';
import 'package:food/feathers/auth/login/_ui/emailTextFieldWidget.dart';
import 'package:food/localisation/en/strings.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});
  
    static const routeName = "/forgotPassword-view";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthStackWidget(
        headText: StringName().forgotPasswordText,
        subText: StringName().forgotPasswordSubText,
        childWidget: ForgotPasswordCardChildWidget(),
      ),
    );
  }
}

class ForgotPasswordCardChildWidget extends StatelessWidget {
  const ForgotPasswordCardChildWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          const EmailTextFieldWidget(),
          const SizedBox(height: 30),
          CardButton(buttonText: StringName().forgotPasswordButtonText),
        ],
      ),
    );
  }
}