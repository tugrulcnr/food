
import 'package:flutter/material.dart';

class LoginViewModel with ChangeNotifier  {

  bool isClicked = false;


  void changeClickOperation() {
    isClicked = !isClicked;
    notifyListeners();
  }

 
  
}