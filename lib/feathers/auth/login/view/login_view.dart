import 'package:flutter/material.dart';
import '../../../../common/widgets/auth_stack_widget.dart';
import '../../../../data/colors.dart';
import '../../../../data/image_path.dart';
import '../../../../data/textFont.dart';
import '../../forget_password/view/forgot_password_view.dart';
import '../_ui/emailTextFieldWidget.dart';
import '../_ui/passwordTextFieldWidget.dart';
import '../_ui/cardButton.dart';
import '../view_model/login_view_model.dart';
import '../../sipnUp/view/sign_up_view.dart';
import '../../../../localisation/en/strings.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  static const routeName = "/login-view";

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<LoginViewModel>(
        builder: (context, value, child) {
          return AuthStackWidget(
            headText: StringName().loginheadText,
            subText: StringName().loginsubText,
            childWidget:  CardChildWidget(checkboxValue: value.isClicked, onChanged: (bool) {value.changeClickOperation();},),
          );
        },
      ),
    );
  }
}

class CardChildWidget extends StatelessWidget {
  CardChildWidget({
    super.key,
    required this.checkboxValue,
    required this.onChanged,
  });
  bool checkboxValue;
  Function(bool?) onChanged;
  
  

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
            mainAxisSize : MainAxisSize.min,
            children: [
              Checkbox(
                value: checkboxValue,
                onChanged: onChanged,
              ),
              Text(
                StringName().rememberMeText,
                style: const TextStyle(color: Colors.black45),
              ),
              const Spacer(),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, ForgotPasswordView.routeName);
                  },
                  child: Text(
                    StringName().forgotPasswordText,
                    style: TextStyle(color: ColorWidgets().buttonBackground),
                  ))
            ],
          ),
          const SizedBox(height: 15),
          CardButton(
            buttonText: StringName().loginheadText,
          ),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(StringName().dontHaveAccount),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, SignUpView.routeName);
                },
                child: Text(
                  StringName().singUp,
                  style: TextStyle(
                      color: ColorWidgets().buttonBackground,
                      fontWeight: FontWeight.bold),
                ),
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
                Image.asset(ImagesPath.faceIcon),
                Image.asset(ImagesPath.twiterIcon),
                Image.asset(ImagesPath.appleIcon),
              ],
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
