import 'package:get/get.dart';
import 'package:learning_get/CustomClasses/student.dart';

class MyController4 extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }

  @override
  void onInit() {
    //called everytime when value of count variable is changed
    // ever(count, (_) => print(count));

    // called everytime when value of any variable in the list is changed
    // everAll([count], (_) => print(count));

    //called only once when value of count variable is changed
    // once(count, (_) => print(count));

    //called everytime when user stops typing for a specific time
    debounce(count, (_) => print("when user stops typing for 1 sec"),
        time: Duration(seconds: 1));

    //Ignore all changes within 3 seconds
    //imagine user can earn coins by clicking on something
    //if he clicked 300 times in 1 min
    //he would have 300 coins
    //but using interval
    //you can set a time frame for 3 sec
    //and so even on clicking millions times in 1 sec user would earn only 20 coins
    // interval(count, (_) => print("Ignore all changes within 3 seconds"),
    //     time: Duration(seconds: 3));

    super.onInit();
  }
}
