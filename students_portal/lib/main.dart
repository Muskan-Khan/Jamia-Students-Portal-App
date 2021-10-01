import 'package:flutter/material.dart';
import 'package:students_portal/internal_screens/header.dart';

void main() {
  runApp(MaterialApp(
    home: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [CustomHeader()],
    ),
    debugShowCheckedModeBanner: false,
  ));
}
