import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_get/CustomClasses/my_controller.dart';
import 'package:learning_get/CustomClasses/student.dart';
import 'package:learning_get/Screen/home.dart';
import 'package:learning_get/Screen/next_screen.dart';

class ControllerLogicUI extends StatelessWidget {
  //create instance of controller
  MyController my_controller = Get.put(MyController());

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
                Obx(() =>
                    //each var observable
                    // Text('Name is ${my_controller.student.name}')),

                    //entire class observable
                    Text('Name is ${my_controller.student.value.name}')),
                SizedBox(height: 20),
                ElevatedButton(
                    child: Text('Upper'),
                    onPressed: () {
                      //individual variables observable
                      // my_controller.convertToUpperCase();

                      //entire class observable
                      my_controller.convertUpperCase();
                    })
              ],
            ),
          ),
        ));
  }
}
