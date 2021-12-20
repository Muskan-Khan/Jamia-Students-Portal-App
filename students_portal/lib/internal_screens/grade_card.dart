// Sem/Session
// Exam Type
// Honours
// Combination
//-------------- Result--------
import 'package:flutter/material.dart';
import 'package:students_portal/Components/blue_border.dart';
import 'package:students_portal/Components/blue_border_content.dart';
import 'package:students_portal/Components/students_data.dart';
import 'package:students_portal/Components/students_grade.dart';
import 'package:students_portal/Database/db_connections.dart';
import 'package:students_portal/internal_screens/grade_card_element.dart';

import 'header.dart';

class GradeCard extends StatefulWidget {
  final String enrolmentNo;
  final String name;
  // final DatabaseConnectivity conn;
  final List<GradeData> gdreturned;
  const GradeCard({
    Key? key,
    required this.enrolmentNo,
    required this.name,
    // required this.conn,
    required this.gdreturned,
    // required this.studentData
  }) : super(key: key);

  @override
  State<GradeCard> createState() => _GradeCardState();
}

class _GradeCardState extends State<GradeCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomHeader(),
            Stack(children: [
              BlueBanner(
                studentDataHeading: BlueBorderContent(
                  homeIcon: 'assets/images/home.png',
                  studentIcon: 'assets/images/user.png',
                  studentName: widget.name,
                ),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/images/transparent.png',
                          height: MediaQuery.of(context).size.height / 30,
                          width: MediaQuery.of(context).size.width / 14,
                        )),
                  ),
                  const Text(
                    '/',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text('Grade Card',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20)))),
                ],
              ),
            ]),
            Column(
              children: [
                Container(
                  height: 38,
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                      left: 20, top: 20, right: 20, bottom: 0),
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                    'Result Declaration',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  color: Colors.grey[600],
                ),
                Container(
                  margin: const EdgeInsets.all(30),
                  color: Colors.white,
                  //decoration: BoxDecoration(
                  //border: Border.all(color: //Colors.pink),
                  //),
                  child: Column(
                    children: [
                      for (var gdr in widget.gdreturned)
                        GradeCardElement(
                          enrolmentNo: widget.enrolmentNo,
                          semester: gdr.semester,
                          examType: gdr.examType,
                          session: gdr.session,
                          honours: gdr.honours,
                          cardURL: gdr.cardURL,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
