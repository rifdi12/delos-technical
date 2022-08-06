// ignore_for_file: avoid_relative_lib_imports

import 'package:delos_test/controller/home_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:integration_test/integration_test.dart';

import '../lib/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test happy flow', () {
    testWidgets('tap detail weather', (tester) async {
      app.main();
      HomeController controller = Get.put(HomeController());

      // State loading
      expect(controller.loading.value, equals(true));

      // Hit the API
      await controller.getData();

      // Trigger a frame.
      await tester.pumpAndSettle();

      // Get data dengan index 0
      Finder firstData = find.text(
        controller.dataHome.value.list![0].weather[0].main,
      );

      await tester.tap(firstData);
    });
  });
}
