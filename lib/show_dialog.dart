import 'package:flutter/material.dart';
import 'package:get/get.dart';

GetMaterialApp showDialog() {
  return GetMaterialApp(
      title: 'Dialog',
      home: Scaffold(
        appBar: AppBar(
          title: Text('dialog'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: Text('show dialog'),
                onPressed: () {
                  //show defaultDialog
                  // Get.defaultDialog();

                  //customise it
                  Get.defaultDialog(
                    title: "Dialog Title",
                    titleStyle: TextStyle(fontSize: 25),
                    middleText: "Middle Text",
                    middleTextStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.purple,
                    radius: 50,

                    // /customize middle text
                    content: Row(
                      children: [
                        // CircularProgressIndicator(),
                        Expanded(child: Text("Loading"))
                      ],
                    ),

                    //default cancel and confirm button
                    textCancel: "Cancel",
                    cancelTextColor: Colors.white,
                    textConfirm: "Confirm",
                    confirmTextColor: Colors.white,
                    onCancel: () {},
                    onConfirm: () {},

                    //color for default buttons
                    buttonColor: Colors.green,

                    //override defualt cancel confirm
                    cancel: Text(
                      "Cancels",
                      style: TextStyle(color: Colors.red),
                    ),
                    confirm: Text(
                      "Confirs",
                      style: TextStyle(color: Colors.amber),
                    ),
                    actions: [
                      ElevatedButton(
                        child: Text("action-1"),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                      ElevatedButton(
                        child: Text("action-2"),
                        onPressed: () {},
                      ),
                    ],

                    //clicking outside of dialog won't close it
                    barrierDismissible: false,
                  );
                },
              )
            ],
          ),
        ),
      ));
}
