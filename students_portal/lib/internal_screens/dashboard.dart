import 'package:flutter/material.dart';
import 'package:students_portal/internal_screens/header.dart';
import 'package:students_portal/internal_screens/dashboard_elements.dart';

class LoggedInCandidateDashboard extends StatelessWidget {
  const LoggedInCandidateDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: SingleChildScrollView(
      child: Column(
        children: [
          const CustomHeader(),
          Stack(
            children: [
              // Container(
              //   height: MediaQuery.of(context).size.height,
              //   //* 0.752,
              //   color: Colors.white,
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //backgroundColor:Colors.grey[100],
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
          )
        ],
      ),
    ));
  }
}
