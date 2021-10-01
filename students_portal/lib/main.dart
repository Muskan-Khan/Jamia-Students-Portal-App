import 'package:flutter/material.dart';
import 'package:students_portal/internal_screens/header.dart';
import 'package:students_portal/internal_screens/login.dart';

void main() {
  runApp(MaterialApp(
    home: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [CustomHeader(), Login()],
    ),
    debugShowCheckedModeBanner: false,
  ));
}




// Stack(children[
//                   ClipPath(
//           clipper: BlueShade(),
//           child: Container(color: const Color(0xff39a6f0)),
//         ),
//           Center(
//                 child: Image.asset(
//                   'assets/images/jmilogo.png',
//                 ),
//               ),
//         ]