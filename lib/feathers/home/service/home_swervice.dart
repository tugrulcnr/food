import 'package:dio/dio.dart';
import '../model/home_model.dart';
import '../../../product/network/network_manager.dart';

class HomeViewService {
  final Dio _networkManager = ProjectNetworkManager.instance.service;

  Future<HomeModel?> fetchData() async {
    final response = await _networkManager.get("search?location=ANKARA");
    if (response.statusCode == 200) {
      final data = response.data;
      if (data is Map<String, dynamic>) {
        return HomeModel.fromJson(data);
      }
    }else{
      print("------- Service KATMANINDA HATA VAR -----"*10);
    }
    return null;
  }
}
