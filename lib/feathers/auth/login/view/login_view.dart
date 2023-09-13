import 'package:flutter/material.dart';
import 'package:food/common/widgets/auth_stack_widget.dart';
import 'package:food/data/colors.dart';
import 'package:food/data/image_path.dart';
import 'package:food/data/textFont.dart';
import 'package:food/feathers/auth/login/_ui/emailTextFieldWidget.dart';
import 'package:food/feathers/auth/login/_ui/passwordTextFieldWidget.dart';
import 'package:food/feathers/auth/login/_ui/cardButton.dart';
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
      body: AuthStackWidget(
        headText: StringName().loginheadText,
        subText: StringName().loginsubText,
        childWidget: const CardChildWidget(),
      ),
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
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          const EmailTextFieldWidget(),
          const SizedBox(height: 35),
           PasswordTextFieldWidget(),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              Text(
                StringName().rememberMeText,
                style: const TextStyle(color: Colors.black45),
              ),
              const Spacer(),
              InkWell(
                  child: Text(
                StringName().forgotPasswordText,
                style: TextStyle(color: ColorWidgets().buttonBackground),
              ))
            ],
          ),
          const SizedBox(height: 15),
          CardButton(buttonText: StringName().loginheadText,),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(StringName().dontHaveAccount),
              Text(
                StringName().singUp,
                style: TextStyle(
                    color: ColorWidgets().buttonBackground,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 25),
          const Text(
            "Or",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                    ImagesPath.faceIcon),
                Image.asset(
                    ImagesPath.twiterIcon),
                Image.asset(
                    ImagesPath.appleIcon),
              ],
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}


