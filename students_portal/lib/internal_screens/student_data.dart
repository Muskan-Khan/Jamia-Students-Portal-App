import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:students_portal/internal_screens/header.dart';
import 'package:students_portal/Components/blue_border.dart';

class StudentData extends StatelessWidget {
  const StudentData({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomHeader(),
          BlueBanner(studentsName: "ABC "),
          Column(
            children: [
              Container(
                height: 38,
                width: double.infinity,
                margin:
                    EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 0),
                padding: EdgeInsets.all(5),
                child: Text(
                  'Student Data',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                color: Colors.grey[800],
              ),
              Container(
                margin: EdgeInsets.all(30),
                color: Colors.white,
                //decoration: BoxDecoration(
                //border: Border.all(color: //Colors.pink),
                //),
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        child: Text('Jamia Millia Islamia',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ))),
                    Container(
                        padding: EdgeInsets.all(5),
                        child: Image.asset('assets/images/JMIsinglelogo.jpg',
                            width: 100, height: 100)),
                    Container(
                        padding: EdgeInsets.all(10),
                        child: Text('STUDENT DATA SHEET',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ))),
                    Container(
                        child: Table(
                            border: TableBorder.all(
                                color: Colors.black, style: BorderStyle.solid),
                            children: [
                          TableRow(children: [
                            Row(children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Text('Candidate Name : ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Text('Muskan',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              )
                            ])
                          ])
                        ])),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
