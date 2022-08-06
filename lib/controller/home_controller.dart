import 'package:delos_test/model/weather_model.dart';
import 'package:delos_test/repository/home_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final dataHome = WeatherModel().obs;
  HomeRepository repository = HomeRepository();
  final loading = false.obs;
  final error = false.obs;

  getData() async {
    loading.value = true;
    error.value = false;
    update();
    try {
      Response? response = await repository.getData();
      if (response == null) {
        loading.value = false;
        error.value = true;
        update();
      } else {
        WeatherModel model = WeatherModel.fromJson(response.body);
        dataHome.value = model;
        error.value = false;
        loading.value = false;
        update();
      }
    } catch (e) {
      error.value = false;
      loading.value = false;
      update();
    }
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
