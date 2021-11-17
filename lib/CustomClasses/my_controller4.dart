import 'package:get/get.dart';
import 'package:learning_get/CustomClasses/student.dart';

class MyController4 extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update(['txtCount']); //only update getbuilder with this id
  }
}
