import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:students_portal/Components/students_data.dart';
import 'package:students_portal/Components/students_grade.dart';
import 'package:students_portal/Database/db_connections.dart';
import 'package:students_portal/internal_screens/grade_card.dart';
import 'student_data.dart';
//Unnecessary comment
//const DashboardElements({Key? key, required this.value}) : super(key: key);

class DashboardElements extends StatefulWidget {
  final int screenToCall;
  final String value;
  final String enrolmentNo;
  final DatabaseConnectivity dc;
  //const DashboardElements({Key? key, required this.value}) : super(key: key);
  const DashboardElements(
      {Key? key,
      required this.value,
      required this.dc,
      required this.enrolmentNo,
      required this.screenToCall})
      : super(key: key);

  @override
  _DashboardElementsState createState() => _DashboardElementsState();
}

// GradeData g = GradeData();
// List<GradeData> gdr = List<GradeData>.filled(20, g, growable: true);
StudentData sdreturned = StudentData();

class _DashboardElementsState extends State<DashboardElements> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    getGradeData() async {
      await widget.dc.connect();
      await widget.dc.getStudentsData(sdreturned, widget.enrolmentNo);
      List<GradeData> gd = await widget.dc.getGradeData(widget.enrolmentNo);
      return gd;
    }

    getData() async {
      await widget.dc.connect();
      await widget.dc.getStudentsData(sdreturned, widget.enrolmentNo);
      // print("Just Called, Get Students Data: " + sdreturned.userStudentName);
    }

    functionSelector() async {
      if (widget.screenToCall == 1) {
        await getData();
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => StudentDataScreen(
                      studentData: sdreturned,
                      enrolmentNo: widget.enrolmentNo,
                    )));
      } else if (widget.screenToCall == 4) {
        List<GradeData> gds = await getGradeData();
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => GradeCard(
                      enrolmentNo: widget.enrolmentNo,
                      name: sdreturned.userStudentName,
                      gdreturned: gds,
                    )));
      }
    }

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
                onTap: functionSelector,
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
                              child:
                                  Image.asset("assets/images/studentIcon.png"),
                              padding: const EdgeInsets.only(top: 10),
                              height: 100,
                              width: 100,
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                widget.value,
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
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
