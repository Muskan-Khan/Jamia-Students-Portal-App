// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:students_portal/internal_screens/header.dart';
import 'package:students_portal/internal_screens/dashboard_elements.dart';
import 'package:students_portal/Components/blue_border.dart';

class LoggedInCandidateDashboard extends StatefulWidget {
  final String enrolmentNo;
  final String name;
  const LoggedInCandidateDashboard(
      {Key? key, required this.enrolmentNo, required this.name})
      : super(key: key);

  @override
  State<LoggedInCandidateDashboard> createState() =>
      _LoggedInCandidateDashboardState(
          enrolmentNo: this.enrolmentNo, name: this.name);
}

class _LoggedInCandidateDashboardState
    extends State<LoggedInCandidateDashboard> {
  final String name;
  final String enrolmentNo;
  _LoggedInCandidateDashboardState(this.enrolmentNo, this.name);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomHeader(),
          BlueBanner(studentsName: widget.name),
          Container(
            color: Colors.white,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    DashboardElements(
                        value: 'Student Data', enrolmentNo: widget.enrolmentNo),
                    DashboardElements(value: 'Greivance Redressal Form'),
                    DashboardElements(value: 'Examination Form'),
                    DashboardElements(value: 'Grade Card'),
                    DashboardElements(value: 'Migration Form'),
                    DashboardElements(value: 'Change Exam Form'),
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
