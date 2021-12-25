import 'package:flutter/material.dart';
import 'package:students_portal/Database/db_connections.dart';
import 'internal_screens/login.dart';

DatabaseConnectivity dcs = DatabaseConnectivity(
    "10.0.2.2", 5432, "StudentsPortal", "postgres", "Latitude21");
void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: const Center(
          child:
              // LoggedInCandidateDashboard(enrolment: "Alpha")
              LoginField(),
          // RegistrationForm(),
          //     ExamFormScreen(
          //   course: '',
          //   enrolmentNo: '',
          // ),
        )),
    debugShowCheckedModeBanner: false,
  ));
}
