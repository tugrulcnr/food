import 'package:flutter/material.dart';
import 'package:food/data/colors.dart';
import 'package:food/localisation/en/strings.dart';

class NameTextFieldWidget extends StatelessWidget {
  const NameTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            StringName().nameTextFieldHeadTet,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        TextField(
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
              hintText: StringName().nameTextfieldHintText,
              hintStyle: const TextStyle(
                color: Colors.black45,
              )),
        )
      ],
    );
  }
}
