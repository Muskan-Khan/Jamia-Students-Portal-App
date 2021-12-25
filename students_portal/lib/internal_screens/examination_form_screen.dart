import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:students_portal/Components/blue_border_content.dart';
import 'package:students_portal/Database/db_connections.dart';
import 'package:students_portal/internal_screens/header.dart';
import 'package:students_portal/Components/blue_border.dart';
import 'package:students_portal/internal_screens/examination_form.dart';

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
  Widget build(BuildContext context) {
    var studentData;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomHeader(),
            Stack(
              children: [
                BlueBanner(
                  studentDataHeading: BlueBorderContent(
                    homeIcon: 'assets/images/home.png',
                    studentIcon: 'assets/images/user.png',
                    studentName: "studentData.userStudentName",
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Image.asset(
                            'assets/images/home.png',
                            height: MediaQuery.of(context).size.height / 30,
                            width: MediaQuery.of(context).size.width / 10,
                          )),
                    ),
                    Text(
                      '/',
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    InkWell(
                        onTap: () {},
                        child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text('View',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)))),
                    Container(
                        margin: EdgeInsets.only(left: 170),
                        //padding: EdgeInsets.all(10),

                        child: Image.asset(
                          'assets/images/user.png',
                          height: MediaQuery.of(context).size.height / 40,
                          width: MediaQuery.of(context).size.width / 10,
                        ))
                  ],
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Selection(
                  course: course,
                )),
            ExamForm(),
          ],
        ),
      ),
    );
  }
}

class Selection extends StatefulWidget {
  String course = "";
  Selection({
    Key? key,
    required this.course,
  }) : super(key: key);
  _SelectionState createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  String dropDownValue = 'Select';

  Widget build(BuildContext context) {
    var semList = ['Sem 1', 'Sem 3', 'Sem 5'];
    var flag = false;
    return Container(
      child: Column(
        children: [
          Container(
            height: 38,
            width: double.infinity,
            margin: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 0),
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
            margin: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
            padding: EdgeInsets.all(10),
            child: Column(children: [
              Container(
                width: double.infinity,
                margin:
                    EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 0),
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
                margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 0),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 0.80),
                ),
                child: Text(
                  widget.course,
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin:
                    EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 0),
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
                margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 0),
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
                      value: dropDownValue,
                      //icon: const Icon(Icons.keyboard_arrow_down),
                      //elevation: 200,
                      isExpanded: true,
                      // Array list of items
                      items: semList.map((String it) {
                        return DropdownMenuItem(
                          value: it,
                          child: Text(it),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropDownValue = newValue!;
                        });
                      }),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
