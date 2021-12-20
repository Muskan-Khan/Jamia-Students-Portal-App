import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:students_portal/Components/students_data.dart';
import 'package:students_portal/Components/students_grade.dart';
import 'package:students_portal/Database/db_connections.dart';
import 'down.dart';
import 'student_data.dart';

class GradeCardElement extends StatefulWidget {
  final String enrolmentNo;
  final String semester;
  final String session;
  final String examType;
  final String honours;
  final String cardURL;
  const GradeCardElement({
    Key? key,
    required this.enrolmentNo,
    required this.semester,
    required this.session,
    required this.examType,
    required this.honours,
    required this.cardURL,
  }) : super(key: key);

  @override
  _GradeCardState createState() => _GradeCardState();
}

class _GradeCardState extends State<GradeCardElement> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Material(
          child: Card(
            elevation: 50,
            shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.transparent,
                ),
                borderRadius: BorderRadius.circular(15)),
            color: Colors.blueAccent[100],
            child: SizedBox(
              width: 200,
              height: 200,
              child: InkWell(
                onTap: () {
                  // FileDownloader(
                  //   pdfUrl: widget.cardURL,
                  // );
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 90,
                          child: Column(children: [
                            Container(
                              child: Image.asset("assets/images/gradecard.png"),
                              padding: const EdgeInsets.only(top: 10),
                              height: 100,
                              width: 100,
                            ),
                            Container(
                                padding: const EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      widget.semester + " / " + widget.session,
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      widget.examType,
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      widget.honours,
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ))
                          ]))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
