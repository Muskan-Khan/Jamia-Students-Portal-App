import 'package:flutter/material.dart';
import 'package:students_portal/internal_screens/header.dart';
import 'package:students_portal/internal_screens/dashboard_elements.dart';
import 'package:students_portal/Components/blue_border.dart';

class LoggedInCandidateDashboard extends StatefulWidget {
  final String enrolment;
  const LoggedInCandidateDashboard({Key? key, required this.enrolment})
      : super(key: key);

  @override
  State<LoggedInCandidateDashboard> createState() =>
      _LoggedInCandidateDashboardState();
}

class _LoggedInCandidateDashboardState
    extends State<LoggedInCandidateDashboard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomHeader(),
          BlueBanner(studentsName: widget.enrolment),
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
                    DashboardElements(value: 'Student Data'),
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
