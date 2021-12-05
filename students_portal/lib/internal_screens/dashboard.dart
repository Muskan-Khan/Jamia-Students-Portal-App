// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:students_portal/Components/blue_border_content.dart';
import 'package:students_portal/Database/db_connections.dart';
import 'package:students_portal/internal_screens/header.dart';
import 'package:students_portal/internal_screens/dashboard_elements.dart';
import 'package:students_portal/Components/blue_border.dart';

class LoggedInCandidateDashboard extends StatefulWidget {
  final String enrolmentNo;
  final String name;
  final DatabaseConnectivity conn;
  LoggedInCandidateDashboard({
    Key? key,
    required this.enrolmentNo,
    required this.name,
    required this.conn,
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
  // final String name;
  // final String enrolmentNo;
  // _LoggedInCandidateDashboardState(this.enrolmentNo, this.name);
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
                    DashboardElements(value: 'Student Data', dc: widget.conn),
                    DashboardElements(
                        value: 'Greivance Redressal Form',
                        // enrolmentNo: '',
                        dc: widget.conn),
                    DashboardElements(
                        value: 'Examination Form',
                        // enrolmentNo: '',
                        dc: widget.conn),
                    DashboardElements(
                        value: 'Grade Card'

                        // enrolmentNo: '',
                        ,
                        dc: widget.conn),
                    DashboardElements(
                        value: 'Migration Form'
                        // enrolmentNo: '',
                        ,
                        dc: widget.conn),
                    DashboardElements(
                        value: 'Change Exam Form'

                        // enrolmentNo: '',
                        ,
                        dc: widget.conn),
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
