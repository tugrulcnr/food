import 'package:flutter/material.dart';
import 'package:food/feathers/auth/login/_ui/emailTextFieldWidget.dart';
import 'package:food/feathers/auth/login/_ui/passwordTextFieldWidget.dart';
import 'package:food/localisation/en/common/widgets/auth_stack_widget.dart';
import 'package:food/localisation/en/strings.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthStackWidget(headText: StringName().loginheadText, subText: StringName().loginsubText, childWidget: CardChildWidget(),),
    );
  }
}


class CardChildWidget extends StatelessWidget {
  const CardChildWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(children: const [
        EmailTextFieldWidget(),
        SizedBox(height: 35,),
        PasswordTextFieldWidget(),
      ],),
    );
  }
}



