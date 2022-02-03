import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:students_portal/Components/blue_border_content.dart';
import 'package:students_portal/Database/db_connections.dart';
import 'package:students_portal/internal_screens/header.dart';
import 'package:students_portal/Components/blue_border.dart';
import 'package:students_portal/internal_screens/examination_form.dart';
import '../Components/db_password.dart' as globals;

class ExamFormScreen extends StatelessWidget {
  final String enrolmentNo;
  final String name;
  final String course;
  //final DatabaseConnectivity dc;
  const ExamFormScreen({
    Key? key,
    required this.enrolmentNo,
    required this.name,
    required this.course,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // var studentData;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomHeader(),
            Stack(
              children: [
                const BlueBanner(
                  studentDataHeading: BlueBorderContent(
                    homeIcon: 'assets/images/home.png',
                    studentIcon: 'assets/images/user.png',
                    studentName: "Musk",
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
                            child: Text('Exam Form',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)))),
                  ],
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Selection(
                  enrolmentNo: enrolmentNo,
                  course: course,
                )),
            //ExamForm(),
          ],
        ),
      ),
    );
  }
}

class Selection extends StatefulWidget {
  String course = "MCA";
  String enrolmentNo = "";
  Selection({
    Key? key,
    required this.enrolmentNo,
    required this.course,
  }) : super(key: key);
  _SelectionState createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  String selectedValue = 'select';
  List<String> subjects = <String>[];
  bool flag = false;
  final DatabaseConnectivity dc = DatabaseConnectivity(
      "jmiportal.postgres.database.azure.com",
      5432,
      "studentsportal",
      "jmi_admin",
      globals.db_password);

  @override
  void initState() {
    super.initState();
  }

  getSubj(String course, String sem) async {
    print('Before-Inside getSubjects');
    await dc.connect();
    print(course);
    print(sem);
    subjects = await dc.getSubjects(course, sem);
    print('After-Inside getSubjects');
    setState(() {
      flag = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    //var semList = ['Sem 1', 'Sem 3', 'Sem 5'];
    //var flag = false;

    return SingleChildScrollView(
      child: Column(
        children: [
          if (!flag) ...[
            Container(
              child: Column(
                children: [
                  Container(
                    height: 38,
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        left: 20, top: 20, right: 20, bottom: 0),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Exam Form',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    color: Colors.grey[600],
                  ),
                  Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height / 3,
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        left: 20, top: 20, right: 20, bottom: 20),
                    padding: EdgeInsets.all(10),
                    child: Column(children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                            left: 20, top: 20, right: 20, bottom: 0),
                        padding: EdgeInsets.all(5),
                        child: Text('Honours',
                            style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                            )),
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        margin: EdgeInsets.only(
                            left: 20, top: 0, right: 20, bottom: 0),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 0.80),
                        ),
                        child: const Text(
                          // widget.course
                          "MCA",
                          style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                            left: 20, top: 20, right: 20, bottom: 0),
                        padding: EdgeInsets.all(5),
                        child: Text('Semester',
                            style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                            )),
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        margin: EdgeInsets.only(
                            left: 20, top: 0, right: 20, bottom: 0),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 0.80),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: selectedValue,
                            isExpanded: true,
                            items: ['select', 'sem 1', 'sem 3', 'sem 5']
                                .map((String it) {
                              return DropdownMenuItem(
                                value: it,
                                child: Text(it),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                                getSubj("MCA", selectedValue);
                                print('Inside if');
                              });
                            },
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ] else ...[
            Container(
              child: Column(
                children: [
                  Container(
                    height: 38,
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        left: 20, top: 20, right: 20, bottom: 0),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Exam Form',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    color: Colors.grey[600],
                  ),
                  Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height / 3,
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        left: 20, top: 20, right: 20, bottom: 20),
                    padding: EdgeInsets.all(10),
                    child: Column(children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                            left: 20, top: 20, right: 20, bottom: 0),
                        padding: EdgeInsets.all(5),
                        child: Text('Honours',
                            style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                            )),
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        margin: EdgeInsets.only(
                            left: 20, top: 0, right: 20, bottom: 0),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 0.80),
                        ),
                        child: const Text(
                          // widget.course,
                          "MCA",
                          style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                            left: 20, top: 20, right: 20, bottom: 0),
                        padding: EdgeInsets.all(5),
                        child: Text('Semester',
                            style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                            )),
                      ),
                      Container(
                        width: double.infinity,
                        height: 30,
                        margin: EdgeInsets.only(
                            left: 20, top: 0, right: 20, bottom: 0),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 0.80),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: selectedValue,
                            isExpanded: true,
                            items: ['select', 'sem 1', 'sem 3', 'sem 5']
                                .map((String it) {
                              return DropdownMenuItem(
                                value: it,
                                child: Text(it),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                                getSubj(widget.course, selectedValue);
                                print('Inside else');
                              });
                            },
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            ExamForm(
                enrolmentNo: widget.enrolmentNo,
                subjects: subjects,
                course: widget.course,
                semester: selectedValue),
          ]
        ],
      ),
    );
  }
}
