import 'dart:ui';

import 'package:get/get.dart';
import 'package:learning_get/CustomClasses/student.dart';

class MyController4 extends GetxController {
  void changeLanguage(var param1, param2) {
    var locale = Locale(param1, param2);
    Get.updateLocale(locale);
  }
}
