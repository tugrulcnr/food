import 'package:flutter/material.dart';
import '../../../../common/widgets/auth_stack_widget.dart';
import '../../login/_ui/emailTextFieldWidget.dart';
import '../../login/_ui/nameTextFieldWidget.dart';
import '../../login/_ui/passwordTextFieldWidget.dart';
import '../../login/_ui/cardButton.dart';
import '../view_model/sign_up_view_mode.dart';
import '../../../../localisation/en/strings.dart';
import 'package:provider/provider.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const routeName = "/signUp-view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<SignUpViewModel>(
        builder: (BuildContext context, value, Widget? child) {
          return AuthStackWidget(
            headText: StringName().singUp,
            subText: StringName().singUpToGetStarted,
            childWidget: SignUpCardChildWidget(),
          );
        },
      ),
    );
  }
}

class SignUpCardChildWidget extends StatelessWidget {
  const SignUpCardChildWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const NameTextFieldWidget(),
            const SizedBox(height: 15),
            const EmailTextFieldWidget(),
            const SizedBox(height: 15),
            PasswordTextFieldWidget(),
            const SizedBox(height: 15),
            PasswordTextFieldWidget(textFieldHeadText: "RE-TYPE PASSWORD",),
            const SizedBox(height: 15),
            CardButton(buttonText: StringName().singUp),
          ],
        ),
      ),
    );
  }
}
