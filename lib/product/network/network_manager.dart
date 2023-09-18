
import 'package:dio/dio.dart';

class ProjectNetworkManager {
  late final Dio _service;
  ProjectNetworkManager._() {
    _service = Dio(BaseOptions(
      baseUrl: "https://api.yelp.com/v3/businesses/",
    ));

    _service.interceptors.add(DioInterceptor());
  }
  static ProjectNetworkManager instance = ProjectNetworkManager._();

  Dio get service => _service;
}

class DioInterceptor extends Interceptor {
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    const token = "Wasua2otzv8xHveher4Yl81wOJy9TRZ5-lwz4yUfmB5M-oPM_s5NqwH5PVEhpnllQB7oZR4uvas6MIBiWQai8m7V_OuayGT5sHg474hKcJCVj5JMCVnkaevNBRUIZXYx";
    if (token.isNotEmpty) {
      options.headers['Authorization'] = "Bearer $token";
    }
    options.headers['Content-Type'] = "application/json";

    

    super.onRequest(options, handler);
  }
}
