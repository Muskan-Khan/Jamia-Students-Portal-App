import 'package:flutter/material.dart';
import 'package:students_portal/internal_screens/dashboard.dart';

void main() {
  runApp(MaterialApp(
    home: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        // CustomHeader()
        LoggedInCandidateDashboard()
      ],
    ),
    debugShowCheckedModeBanner: false,
  ));
}
