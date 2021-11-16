import 'package:flutter/material.dart';
import 'package:get/get.dart';

GetMaterialApp bottomSheet() {
  return GetMaterialApp(
      title: 'bottom sheet',
      home: Scaffold(
        appBar: AppBar(
          title: Text('bottom sheet'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: Text('show bottom sheet'),
                onPressed: () {
                  Get.bottomSheet(
                      Container(
                        child: Wrap(
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.wb_sunny_outlined),
                              title: Text('Light theme'),
                              onTap: () => {Get.changeTheme(ThemeData.light())},
                            ),
                            ListTile(
                              leading: Icon(Icons.wb_sunny),
                              title: Text('Dark theme'),
                              onTap: () => {
                                Get.changeTheme(ThemeData.dark()),
                              },
                            ),
                          ],
                        ),
                      ),
                      barrierColor: Colors.greenAccent.shade100,
                      backgroundColor: Colors.purple,
                      isDismissible: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2.0)),
                      enableDrag: false);
                },
              )
            ],
          ),
        ),
      ));
}
