import 'package:delos_test/helper/convert_icon.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Convert icon", () {
    expect("http://openweathermap.org/img/wn/test@2x.png",
        equals(convertIcon("test")));
  });
}
