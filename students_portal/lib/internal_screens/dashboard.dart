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
  const LoggedInCandidateDashboard({
    Key? key,
    required this.enrolmentNo,
    required this.name,
    required this.conn,
  }) : super(key: key);

  @override
  State<LoggedInCandidateDashboard> createState() =>
      _LoggedInCandidateDashboardState();
}

class _LoggedInCandidateDashboardState
    extends State<LoggedInCandidateDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomHeader(),
            BlueBanner(
              studentDataHeading: BlueBorderContent(
                homeIcon: 'assets/images/home.png',
                studentIcon: 'assets/images/user.png',
                studentName: widget.name,
              ),
            ),
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
                      DashboardElements(
                        value: 'Student Data',
                        dc: widget.conn,
                        enrolmentNo: widget.enrolmentNo,
                        screenToCall: 1,
                      ),
                      DashboardElements(
                        value: 'Examination Form',
                        // enrolmentNo: '',
                        dc: widget.conn, enrolmentNo: widget.enrolmentNo,
                        screenToCall: 2,
                      ),
                      DashboardElements(
                        value: 'Grievance Form',
                        // enrolmentNo: '',
                        dc: widget.conn, enrolmentNo: widget.enrolmentNo,
                        screenToCall: 3,
                      ),
                      DashboardElements(
                        value: 'Grade Card',
                        dc: widget.conn,
                        enrolmentNo: widget.enrolmentNo,
                        screenToCall: 4,
                      ),
                      DashboardElements(
                        value: 'Migration Form',
                        dc: widget.conn,
                        enrolmentNo: widget.enrolmentNo,
                        screenToCall: 5,
                      ),
                      DashboardElements(
                        value: 'Change Exam Form',
                        dc: widget.conn,
                        enrolmentNo: widget.enrolmentNo,
                        screenToCall: 6,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
