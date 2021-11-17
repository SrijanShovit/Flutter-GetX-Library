import 'package:get/get.dart';
import 'package:learning_get/CustomClasses/student.dart';

//This file is to separate business logic from UI using GetX controller
class MyController extends GetxController {
  // var student = Student();
  // void convertToUpperCase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }

  var student = Student(name: "Tom", age: 25).obs;
  void convertUpperCase() {
    student.update((student) {
      student!.name = student.name.toString().toUpperCase();
    });
  }
}
