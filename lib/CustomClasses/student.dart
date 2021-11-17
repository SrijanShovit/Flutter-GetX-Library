import 'package:get/get.dart';

class Student {
  /*Classes can be made observable by making individual variables Rx or by making 
  entire class observable
  */
  // //Individual variables Rx
  // var name = "Tom".obs;
  // var age = 25.obs;

  // To make entire class observable
  var name;
  var age;
  Student({this.name, this.age});
}
