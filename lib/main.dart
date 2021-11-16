import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //if only state management is required then MaterialApp will be do good
    //for additional purposes of get we need GetMaterialApp(without using context)
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
                                onTap: () =>
                                    {Get.changeTheme(ThemeData.light())},
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
}
