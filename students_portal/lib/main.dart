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
import '../Components/db_password.dart' as globals;

// DatabaseConnectivity dcs = DatabaseConnectivity(
//     "jmiportal.postgres.database.azure.com",
//     5432,
//     "studentsportal",
//     "jmi_admin",
//     globals.db_password);
void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: const Center(
            child: ExamFormScreen(
          enrolmentNo: '12-12345',
          //subjects: ['DBMS', 'Algorithm', 'Machine Learning'],
          name: 'Musk',
          course: 'MCA',
          //semester: 'Sem-3'
        ))),
    //LoginField())),
    debugShowCheckedModeBanner: false,
  ));
}
