import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:learning_get/CustomClasses/my_controller4.dart';

void main() {
  runApp(MyApp());
}

//Workers generate some specific callbacks whenever some task is done

class MyApp extends StatelessWidget {
  MyController4 myController = Get.put(MyController4());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Workers',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Workers'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                ElevatedButton(
                    child: Text('Increment'),
                    onPressed: () => myController.increment()),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: TextField(
                    onChanged: (val) {
                      myController.increment();
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
