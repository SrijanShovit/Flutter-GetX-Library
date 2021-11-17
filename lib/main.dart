import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_get/CustomClasses/messages.dart';

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
        translations: Messages(),
        locale: Locale('en',
            'US'), //default locale //to get device locale : Get.deviceLocale
        fallbackLocale: Locale('en', 'US'),
        title: 'Internationalisation',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Internationalisation'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('hello'.tr),
                SizedBox(height: 20),
                ElevatedButton(
                    child: Text('Hindi'),
                    onPressed: () => myController.changeLanguage('hi', 'IN')),
                SizedBox(height: 20),
                ElevatedButton(
                    child: Text('French'),
                    onPressed: () => myController.changeLanguage('fr', 'FR')),
                SizedBox(height: 20),
                ElevatedButton(
                    child: Text('English'),
                    onPressed: () => myController.changeLanguage('en', 'US')),
              ],
            ),
          ),
        ));
  }
}
