import 'package:delos_test/helper/api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
  ApiHelper controller = Get.put(ApiHelper());
  group("Check API Helper", () {
    test("Check Base URL", () {
      expect(
        controller.httpClient.baseUrl,
        equals("https://api.openweathermap.org/data/2.5/"),
      );
    });
    test("Check Time Out Duration", () {
      expect(
        controller.httpClient.timeout,
        equals(
          const Duration(seconds: 10),
        ),
      );
    });

    test("Check Default Content Type", () {
      expect(
        controller.httpClient.defaultContentType,
        equals("application/json"),
      );
    });
  });
}
