import 'package:flutter/material.dart';
import 'package:students_portal/internal_screens/dashboard.dart';
import 'package:students_portal/internal_screens/header.dart';
import 'package:students_portal/internal_screens/login.dart';
import 'package:students_portal/internal_screens/student_data.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//         backgroundColor: Colors.grey[200],
//         body: const Center(
//           child:
//               // LoggedInCandidateDashboard(enrolment: "Alpha")
//               LoginField(),
//         )),
//     debugShowCheckedModeBanner: false,
//   ));
// }

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: const Center(
          child:
              // LoggedInCandidateDashboard(enrolment: "Alpha")
              StudentData(),
        )),
    debugShowCheckedModeBanner: false,
  ));
}
