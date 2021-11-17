import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:learning_get/CustomClasses/my_controller4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyController4 myController = Get.put(MyController4());

  @override
  Widget build(BuildContext context) {
    //if only state management is required then MaterialApp will be do good
    //for additional purposes of get we need GetMaterialApp(without using context)
    return GetMaterialApp(
        title: 'Unique ID',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Unique ID'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetBuilder<MyController4>(
                  id: 'txtCount',
                  builder: (controller) {
                    return Text("Count is ${controller.count}");
                  },
                ),
                GetBuilder<MyController4>(
                  builder: (controller) {
                    return Text("Count is ${controller.count}");
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      myController.increment();
                    },
                    child: Text('Increment'))
              ],
            ),
          ),
        ));
  }
}
