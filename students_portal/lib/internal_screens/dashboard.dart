import 'package:flutter/material.dart';
import 'package:students_portal/internal_screens/header.dart';

class LoggedInCandidateDashboard extends StatelessWidget {
  const LoggedInCandidateDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHeader(),
        Container(
          height: MediaQuery.of(context).size.height * 0.752,
          color: Colors.white,
        ),
      ],
    );
  }
}
