import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_get/CustomClasses/my_controller.dart';
import 'package:learning_get/CustomClasses/my_controller2.dart';
import 'package:learning_get/CustomClasses/student.dart';
import 'package:learning_get/Screen/home.dart';
import 'package:learning_get/Screen/next_screen.dart';

class ControllerType extends StatelessWidget {
  //if init property is not used in GetX<Type of Controller> then
  //create instance of controller as follows
  MyController2 my_controller = Get.put(MyController2());

  @override
  Widget build(BuildContext context) {
    //if only state management is required then MaterialApp will be do good
    //for additional purposes of get we need GetMaterialApp(without using context)
    return GetMaterialApp(
        title: 'state management',
        home: Scaffold(
          appBar: AppBar(
            title: Text('reactive state manager'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetX<MyController2>(
                  //no need to use this if already object created
                  // init:
                  // MyController2(), //this line will initialise or create instance of my controller
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
                      //b4 calling this method make sure to initialise myController2 instance
                      // Get.find<MyController2>().increment();
                    },
                    child: Text('Increment'))
              ],
            ),
          ),
        ));
  }
}
