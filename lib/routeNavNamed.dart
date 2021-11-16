import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_get/Screen/home.dart';
import 'package:learning_get/Screen/next_screen.dart';

import 'main.dart';

GetMaterialApp navNamedRoute() {
  return GetMaterialApp(
      title: 'navigation',
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/home', page: () => Home()),
        // GetPage(
        //     name: '/nextScreen',
        //     page: () => NextScreen(),
        //     //to control transition root wise
        //     // if specified will override default transition
        //     transition: Transition.leftToRight),

        //passing parameters in routes
        GetPage(
            name: '/nextScreen/:someValue',
            page: () => NextScreen(),
            //to control transition root wise
            // if specified will override default transition
            transition: Transition.leftToRight),
      ],
      unknownRoute: GetPage(name: '/notfound', page: () => Home()),
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
                  onPressed: () {
                    // Get.toNamed("/home");

                    //navigating to undefined name page
                    Get.toNamed("/x");

                    //Go to home screen but cannot return previous screen
                    // Get.offNamed("/home");

                    //Go to home screen and cancel all previous routes/screens
                    // Get.offAllNamed("/home");

                    //Dynamic URL;can pass parameters
                    // Get.toNamed(
                    //     "/home?channel=Ripples Code&content=Flutter GetX ");
                  })
            ],
          ),
        ),
      ));
}
