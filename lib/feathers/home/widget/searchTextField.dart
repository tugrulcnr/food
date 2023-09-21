import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../data/colors.dart';
import '../../../localisation/en/strings.dart';
import '../view_model/home_view_model.dart';

class SearchTextFieldWidget extends StatelessWidget {
  const SearchTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(builder:(context, value, child) {
      return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: value.searchController,
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
            hintText: StringName().searchTextfieldHintText,
            hintStyle: const TextStyle(
              color: Colors.black45,
            ),
            prefixIcon: Icon(Icons.search_sharp),
          ),
        )
      ],
    );
    }, );
  }
}
