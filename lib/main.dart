import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:learning_get/CustomClasses/my_controller4.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // ignore: non_constant_identifier_names
  MyController4 my_controller = Get.put(MyController4());

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
                GetBuilder<MyController4>(
                  //taking some action while initialising
                  // initState: (data) => my_controller.increment(),

                  //if we want to take some action while disposing
                  // dispose: (_) => my_controller.cleanUpTask(),
                  builder: (controller) {
                    return Text("Count is ${controller.count}");
                  },
                ),
                // SizedBox(height: 20),
                // ElevatedButton(
                //     onPressed: () {
                //       //if instance created at top
                //       my_controller.increment();

                //       //if instance not created at top
                //       // Get.find<MyController3>().increment();
                //     },
                //     child: Text('Increment'))
              ],
            ),
          ),
        ));
  }
}
