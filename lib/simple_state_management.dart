import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_get/CustomClasses/myController3.dart';
import 'package:learning_get/CustomClasses/my_controller.dart';
import 'package:learning_get/CustomClasses/my_controller2.dart';
import 'package:learning_get/CustomClasses/student.dart';
import 'package:learning_get/Screen/home.dart';
import 'package:learning_get/Screen/next_screen.dart';

// ignore: must_be_immutable
class SimpleStateManagement extends StatelessWidget {
  //if init property is not used in GetX<Type of Controller> then
  //create instance of controller as follows
  MyController3 my_controller = Get.put(MyController3());

  @override
  Widget build(BuildContext context) {
    //if only state management is required then MaterialApp will be do good
    //for additional purposes of get we need GetMaterialApp(without using context)
    return GetMaterialApp(
        title: 'state management',
        home: Scaffold(
          appBar: AppBar(
            title: Text('simple state manager'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetBuilder<MyController3>(
                  // init: MyController3(),
                  builder: (controller) {
                    //builder takes automatically instance of my controller
                    // return Text("Count is ${controller.count}");

                    return Text("Count is ${my_controller.count}");
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      //if instance created at top
                      my_controller.increment();

                      //if instance not created at top
                      // Get.find<MyController3>().increment();
                    },
                    child: Text('Increment'))
              ],
            ),
          ),
        ));
  }
}
