import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:learning_get/CustomClasses/my_controller4.dart';

void main() {
  runApp(MyApp());
}

//Workers generate some specific callbacks whenever some task is done

class MyApp extends StatelessWidget {
  // MyController4 myController = Get.put(MyController4(),
  // tag: 'instance1',
  // permanent: true);

//  Get.lazyPut<MyController4>(
//     () => MyController4(),
//   );

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Dependency Injection',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Dependency Injection'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                ElevatedButton(
                    child: Text('Click me'),
                    onPressed: () {
                      //If instance is created using tag,we can find instance using tag
                      // Get.find<MyController4>(tag: 'instance1');

                      Get.find<MyController4>();
                    }),
              ],
            ),
          ),
        ));
  }
}
