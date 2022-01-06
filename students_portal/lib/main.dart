import 'package:flutter/material.dart';
import 'package:students_portal/Database/db_connections.dart';
import 'package:students_portal/internal_screens/dashboard.dart';
//import 'package:students_portal/internal_screens/header.dart';
// import 'package:students_portal/internal_screens/login.dart';
// import 'internal_screens/registration.dart';
import 'internal_screens/examination_form.dart';
import 'internal_screens/login.dart';
import 'internal_screens/student_data.dart';
import 'package:students_portal/internal_screens/examination_form_screen.dart';
//import 'package:students/internal_screens/examination_form.dart';

DatabaseConnectivity dcs =
    DatabaseConnectivity("10.0.2.2", 5432, "postgres", "postgres", "admin");
void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: const Center(
            child: ExamForm(
                enrolmentNo: '19MCA1',
                subjects: ['DBMS', 'Algorithm', 'Machine Learning'],
                course: 'MCA',
                semester: 'Sem-3')
            // LoggedInCandidateDashboard(enrolment: "Alpha")
            //LoginField(),
            // RegistrationForm(),
            //     ExamFormScreen(
            //   course: '',
            //   enrolmentNo: '',
            // ),
            )),
    debugShowCheckedModeBanner: false,
  ));
}
