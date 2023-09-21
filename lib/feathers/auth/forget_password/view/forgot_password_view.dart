import 'package:flutter/material.dart';
import '../../../../common/widgets/auth_stack_widget.dart';
import '../../login/_ui/cardButton.dart';
import '../../login/_ui/emailTextFieldWidget.dart';
import '../../../../localisation/en/strings.dart';

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