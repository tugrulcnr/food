import 'package:flutter/material.dart';

class PasswordTextFieldWidgetViewModel with ChangeNotifier {

  bool isShownPassword = false;

  void changeVisibilityOfPassword(){
    isShownPassword = !isShownPassword;
    notifyListeners();
  }

  
}