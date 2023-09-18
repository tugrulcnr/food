import 'package:flutter/material.dart';
import 'package:food/data/image_path.dart';
import 'package:food/feathers/home/_ui/sub_pages/open_restaurants/model/open_restaurants_model.dart';
import 'package:food/feathers/home/_ui/sub_pages/open_restaurants/service/open_restaurants_service.dart';

class OpenRestaurantsViewModel with ChangeNotifier {

  OpenRestaurantsViewModel(){
    getData();
  }
  
  final OpenRestaurantsService openRestaurantsService = OpenRestaurantsService();
  List<Businesses> listBusiness = [];
  late OpenRestaurantsModel? openRestaurantsModel;




  Future<void> getData() async {
     openRestaurantsModel = await openRestaurantsService.fetchData();
     listBusiness = openRestaurantsModel?.businesses ?? [];
     notifyListeners();

    
  }




}