import 'package:dio/dio.dart';
import 'package:food/feathers/home/_ui/sub_pages/open_restaurants/model/open_restaurants_model.dart';
import 'package:food/product/network/network_manager.dart';

class OpenRestaurantsService {
  final Dio _networkManager = ProjectNetworkManager.instance.service;

  Future<OpenRestaurantsModel?> fetchData() async {
    final response = await _networkManager.get("search?location=ANKARA");
    if (response.statusCode == 200) {
      final data = response.data;
      if (data is Map<String, dynamic>) {
        return OpenRestaurantsModel.fromJson(data);
      }
    }else{
      print("------- Service KATMANINDA HATA VAR -----"*10);
    }
    return null;
  }
}
