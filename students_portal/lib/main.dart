import 'package:flutter/material.dart';
import 'package:students_portal/internal_screens/dashboard.dart';
import 'package:students_portal/internal_screens/header.dart';

void main() {
  runApp(MaterialApp(
    home: new Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [LoggedInCandidateDashboard()],
        )),
    debugShowCheckedModeBanner: false,
  ));
}
