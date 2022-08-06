import 'package:delos_test/helper/api.dart';
import 'package:delos_test/helper/const_variable.dart';
import 'package:get/get.dart';

class HomeRepository {
  Future<Response?> getData() async {
    try {
      ApiHelper api = Get.put(ApiHelper());
      DelosVariable globalVar = DelosVariable();
      Response connect = await api.get(
          "forecast?lat=${globalVar.latitude}&lon=${globalVar.longitude}&appid=${globalVar.apiKey}&units=metric");

      if (connect.isOk) {
        return connect;
      }
    } catch (e) {
      return null;
      // print(e);
    }
    return null;
  }
}
