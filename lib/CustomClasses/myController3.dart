import 'package:get/get.dart';
import 'package:learning_get/CustomClasses/student.dart';

//for simple state manager .obs is not required
class MyController3 extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update(); //will update count variable in UI which uses it
  }
}
