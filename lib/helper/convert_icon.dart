import 'package:delos_test/helper/const_variable.dart';

String convertIcon(String icon) {
  DelosVariable variable = DelosVariable();
  return variable.urlImage.replaceAll("{icon}", icon);
}
