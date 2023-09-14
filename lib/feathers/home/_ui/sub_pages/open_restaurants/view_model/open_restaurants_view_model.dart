import 'package:flutter/material.dart';
import 'package:food/data/image_path.dart';

class OpenRestaurantsViewModel with ChangeNotifier {
  
  List<String> openRestaurantsName = ['Rose Garden Restaurant','Tasty Treat Gallery','Spicy Restaurant'];
  List<String> openRestaurantsImagePath = [ImagesPath.place1Icon,ImagesPath.place2Icon,ImagesPath.place3Icon];


}