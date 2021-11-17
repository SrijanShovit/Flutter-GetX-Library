import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_get/Screen/home.dart';
import 'package:learning_get/Screen/next_screen.dart';

GetMaterialApp incrementReactiveState() {
  var count = 0.obs;

  void increment() {
    count += 2;
  }

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
              Obx(() => Text('Count value is $count')),
              SizedBox(height: 20),
              ElevatedButton(
                  child: Text('Increment'),
                  onPressed: () {
                    increment();
                  })
            ],
          ),
        ),
      ));
}
