import 'package:flutter/material.dart';
import 'package:students_portal/internal_screens/dashboard.dart';
import 'package:students_portal/internal_screens/header.dart';
import 'package:students_portal/internal_screens/login.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            LoggedInCandidateDashboard()
            // LoginField()
          ],
        )),
    debugShowCheckedModeBanner: false,
  ));
}
