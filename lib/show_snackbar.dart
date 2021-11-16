import 'package:flutter/material.dart';
import 'package:get/get.dart';

GetMaterialApp showSnackbar() {
  return GetMaterialApp(
      title: 'Snackbar',
      home: Scaffold(
        appBar: AppBar(
          title: Text('snackbar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: Text('show snackbar'),
                onPressed: () {
                  Get.snackbar("Snackbar title", "Snackbar message",

                      //other properties
                      snackPosition: SnackPosition.BOTTOM,

                      //override title or message above
                      titleText: Text('Another title'),
                      messageText: Text('Another message'),
                      colorText: Colors.red,
                      backgroundColor: Colors.amber,
                      borderRadius: 30,
                      margin: EdgeInsets.all(10),
                      // maxWidth: 300,
                      animationDuration: Duration(milliseconds: 3000),
                      backgroundGradient:
                          LinearGradient(colors: [Colors.red, Colors.blue]),

                      //always use border color with border width
                      borderColor: Colors.purple,
                      borderWidth: 4,
                      boxShadows: [
                        BoxShadow(
                            color: Colors.yellow,
                            offset:
                                Offset(30, 50), //30 px from x ; 50 px from y
                            spreadRadius: 20,
                            blurRadius: 8)
                      ],
                      isDismissible: true,
                      dismissDirection: SnackDismissDirection.HORIZONTAL,
                      //animation when snackbar is going to be displayed
                      forwardAnimationCurve: Curves.bounceInOut,

                      //duration of visibility of snackbar
                      // duration: Duration(milliseconds: 8000),
                      icon: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                      shouldIconPulse: false,
                      leftBarIndicatorColor: Colors.white,
                      mainButton:
                          TextButton(onPressed: () {}, child: Text('Retry')),
                      onTap: (V) {
                        print("Snackbar clicked");
                      },

                      //when snackbar opens everything else blurs
                      // overlayBlur: 5,
                      // overlayColor: Colors.grey,

                      padding: EdgeInsets.all(10),
                      showProgressIndicator: true,
                      progressIndicatorBackgroundColor: Colors.black,
                      progressIndicatorValueColor:
                          AlwaysStoppedAnimation<Color>(Colors.white),

                      //animation when snackbar is going to be hided
                      reverseAnimationCurve: Curves.bounceInOut,
                      snackbarStatus: (v) {
                        print(v);
                      },
                      userInputForm: Form(child: TextField()));
                },
              )
            ],
          ),
        ),
      ));
}
