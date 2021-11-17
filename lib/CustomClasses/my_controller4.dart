import 'package:get/get.dart';
import 'package:learning_get/CustomClasses/student.dart';

class MyController4 extends GetxController {
  var count = 0;
  void increment() async {
    await Future<int>.delayed(Duration(seconds: 5));
    this.count++;
    update();
  }

  void cleanUpTask() {
    print("Clean up task");
  }

  //Better approach
  @override
  void onInit() {
    print("Init called");
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
