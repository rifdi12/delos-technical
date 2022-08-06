import 'package:get/get.dart';

class ApiHelper extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = "https://api.openweathermap.org/data/2.5/";
    httpClient.defaultContentType = "application/json";
    httpClient.timeout = const Duration(seconds: 10);

    super.onInit();
  }
}
