import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_get/Screen/home.dart';

Future<GetMaterialApp> routeNav() async {
  return GetMaterialApp(
      title: 'navigation',
      home: Scaffold(
        appBar: AppBar(
          title: Text('navigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  child: Text('go to home'),
                  onPressed: () async {
                    // Get.to(Home(),

                    //     //will be opened as dialog occupying entire screen
                    //     fullscreenDialog: true,

                    //     //animation
                    //     transition: Transition.zoom,
                    //     // duration: Duration(milliseconds: 4000),
                    //     curve: Curves.bounceInOut);

                    //Go to home screen but cannot return previous screen
                    // Get.off(Home());

                    //Go to home screen and cancel all previous routes/screens
                    // Get.offAll(Home());

                    //Go to next screen with some data
                    // Get.to(Home(), arguments: "Data from main screen");

                    //go to next screen and recieve data sent from home screen
                    var data = await Get.to(Home());
                    print("received data is $data");
                  })
            ],
          ),
        ),
      ));
}
