// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:learning_get/CustomClasses/student.dart';

// GetMaterialApp customClassReactiveStManag() {
//   //all variable obs
//   var student = Student();

//   //entire class observable
//   // final student = Student(name: "Tom", age: 25).obs;

//   ///above code just below stateless widget line

//   return GetMaterialApp(
//       title: 'state management',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('reactive state manager'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Obx(() =>
//                   //each var observable
//                   Text('Name is ${student.name.value}')),

//               //entire class observable
//               // Text('Name is ${student.value.name}')),
//               SizedBox(height: 20),
//               ElevatedButton(
//                   child: Text('Upper'),
//                   onPressed: () {
//                     //If individual variables are observable
//                     student.name.value = student.name.value.toUpperCase();

//                     //entire class observable
//                     // student.update((student) {
//                     // student!.name = student.name.toString().toUpperCase();
//                     // });
//                   })
//             ],
//           ),
//         ),
//       ));
// }
