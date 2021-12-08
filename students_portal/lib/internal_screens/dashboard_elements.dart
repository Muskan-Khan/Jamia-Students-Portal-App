import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:students_portal/Components/students_data.dart';
import 'package:students_portal/Database/db_connections.dart';
import 'student_data.dart';

class DashboardElements extends StatefulWidget {
  final String value;
  final String enrolmentNo;
  final DatabaseConnectivity dc;
  //const DashboardElements({Key? key, required this.value}) : super(key: key);
  const DashboardElements(
      {Key? key,
      required this.value,
      required this.dc,
      required this.enrolmentNo})
      : super(key: key);

  @override
  _DashboardElementsState createState() => _DashboardElementsState();
}

class _DashboardElementsState extends State<DashboardElements> {
  @override
  Widget build(BuildContext context) {
    getData() async {
      StudentData sdreturned = StudentData();
      await widget.dc.connect();
      await widget.dc.getStudentsData(sdreturned, widget.enrolmentNo);
      print("Just Called, Get Students Data: " + sdreturned.userStudentName);

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => StudentDataScreen(
                    studentData: sdreturned,
                    enrolmentNo: widget.enrolmentNo,
                  )));
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
                onTap: getData,
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
                              padding: const EdgeInsets.only(top: 10),
                              height: 100,
                              width: 100,
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://cdn2.iconfinder.com/data/icons/user-23/512/User_Generic_1.png"),
                              ),
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
