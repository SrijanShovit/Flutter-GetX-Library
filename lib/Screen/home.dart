import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //retrieve data being passed to this screen
            // Text('${Get.arguments}'),
            ElevatedButton(
                child: Text('back to main'),
                onPressed: () {
                  // Get.back();

                  //send data to prev screen must use result as name
                  // Get.back(result: "This is from home screen to main screen");
                }),
            ElevatedButton(
                child: Text('go to next'),
                onPressed: () {
                  // Get.toNamed('/nextScreen');

                  //in case of route  parameters these need to have some value thing
                  Get.toNamed('/nextScreen/1234');
                }),

            //retrieving dynamic url
            // Text("${Get.parameters['channel']}+  ${Get.parameters['content']}")
          ],
        ),
      ),
    );
  }
}
