import 'package:flutter/material.dart';
import 'package:students_portal/internal_screens/dashboard.dart';
import 'package:students_portal/internal_screens/dashboard_elements.dart';
import 'package:students_portal/internal_screens/login.dart';

void main() {
  runApp(MaterialApp(
    home: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        //Dashboard Screen
        // LoggedInCandidateDashboard(),
        //Login Screen
        LoginField()
      ],
    ),
    debugShowCheckedModeBanner: false,
  ));
}
