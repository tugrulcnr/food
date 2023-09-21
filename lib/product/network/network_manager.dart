
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
    const token = "qChnfwIfD_2hr-iZ7oJbZwiZ4rF501IoisE5nAYGADUyBrBHaalN4e3XF1k0Dnl8oseKWozIXCrtrcw6Q2WRgqM5wJIVBfkuur54dEjH0lAzN2HvwlxpUOu3ddMKZXYx";
    if (token.isNotEmpty) {
      options.headers['Authorization'] = "Bearer $token";
    }
    options.headers['Content-Type'] = "application/json";

    

    super.onRequest(options, handler);
  }
}
