import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:students_portal/Components/blue_border_content.dart';

class BlueBanner extends StatelessWidget {
  final BlueBorderContent studentDataHeading;

  const BlueBanner({Key? key, required this.studentDataHeading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0Xff0171c5),
        height: MediaQuery.of(context).size.height / 20,
        width: MediaQuery.of(context).size.width,
        child: BlueBorderContent(
          homeIcon: Image.asset('assets/images/home.png').image,
          studentIcon: Image.asset('assets/images/user.png').image,
          studentName: studentDataHeading.studentName,
        )
        // Align(
        //   alignment: Alignment.center,
        //   child: Text(
        //     studentsName,
        //     style: TextStyle(
        //       color: Colors.amber[400],
        //       fontSize: 23,
        //       decoration: TextDecoration.none,
        //     ),
        //   ),
        // )
        );
  }
}
