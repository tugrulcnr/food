import 'package:flutter/material.dart';
import 'package:food/data/colors.dart';
import 'package:food/localisation/en/strings.dart';
import 'package:provider/provider.dart';

import 'pasword_view_model.dart/passwordWidget_view_model.dart';

class PasswordTextFieldWidget extends StatelessWidget {
  PasswordTextFieldWidget(
      {super.key,
      this.textFieldHeadText = "PASSWORD",
      });
  String textFieldHeadText;
 

  @override
  Widget build(BuildContext context) {
    return Consumer<PasswordTextFieldWidgetViewModel>(
      builder: (context, value, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                textFieldHeadText,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            TextField(
              obscureText: !value.isShownPassword,
              showCursor: false,
              style: const TextStyle(
                height: 2.0,
              ),
              decoration: InputDecoration(
                  fillColor: ColorWidgets().textfieldBackground,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  hintText: StringName().passwordTextfieldHintText,
                  hintStyle:
                      const TextStyle(color: Colors.black45, letterSpacing: 7),
                  suffixIcon: GestureDetector(
                      onTap: value.changeVisibilityOfPassword,
                      child: value.isShownPassword
                          ? Icon(
                              Icons.visibility,
                            )
                          : Icon(
                              Icons.visibility_off,
                            ))),
            )
          ],
        );
      },
    );
  }
}
