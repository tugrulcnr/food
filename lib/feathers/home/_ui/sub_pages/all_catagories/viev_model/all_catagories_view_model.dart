import 'package:flutter/material.dart';
import 'package:food/data/image_path.dart';

class AllCategoriesViewModel with ChangeNotifier {
  
  List<String> catagoriesName = ['All','Hot Dog','Burger'];
  List<String> catagoriesImagePath = [ImagesPath.allIcon,ImagesPath.hotDohIcon,ImagesPath.burgerIcon];

  int selectedIndex = 1;

  void changeSelectedIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }





}