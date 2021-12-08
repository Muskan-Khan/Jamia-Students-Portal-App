// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:students_portal/Components/blue_border_content.dart';
import 'package:students_portal/Database/db_connections.dart';
import 'package:students_portal/internal_screens/header.dart';
import 'package:students_portal/internal_screens/dashboard_elements.dart';
import 'package:students_portal/Components/blue_border.dart';
import 'package:students_portal/Components/students_data.dart';

class LoggedInCandidateDashboard extends StatefulWidget {
  final String enrolmentNo;
  final String name;
  // final DatabaseConnectivity conn;
  final StudentData sd;
  LoggedInCandidateDashboard({
    Key? key,
    required this.enrolmentNo,
    required this.name,
    required this.sd,
  }) : super(key: key);

  // get connection => null;

  @override
  State<LoggedInCandidateDashboard> createState() =>
      _LoggedInCandidateDashboardState(
          // enrolmentNo: this.enrolmentNo, name: this.name
          );
}

class _LoggedInCandidateDashboardState
    extends State<LoggedInCandidateDashboard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomHeader(),
          BlueBanner(
              studentDataHeading: BlueBorderContent(
            homeIcon: Image.asset('assets/images/home.png').image,
            studentIcon: Image.asset('assets/images/user.png').image,
            studentName: widget.name,
          )),
          // BlueBanner(studentsName: widget.name),
          Container(
            color: Colors.white,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    DashboardElements(value: 'Student Data', sd: widget.sd),
                    DashboardElements(
                        value: 'Greivance Redressal Form',
                        // enrolmentNo: '',
                        sd: widget.sd),
                    DashboardElements(
                        value: 'Examination Form',
                        // enrolmentNo: '',
                        sd: widget.sd),
                    DashboardElements(
                        value: 'Grade Card'

                        // enrolmentNo: '',
                        ,
                        sd: widget.sd),
                    DashboardElements(
                        value: 'Migration Form'
                        // enrolmentNo: '',
                        ,
                        sd: widget.sd),
                    DashboardElements(
                        value: 'Change Exam Form'

                        // enrolmentNo: '',
                        ,
                        sd: widget.sd),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
