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
          Stack(children: [
            BlueBanner(studentsName: "ABC "),
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)))),
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
          ]),
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
                color: Colors.grey[600],
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
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: Text('Jamia Millia Islamia',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ))),
                    Container(
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: Image.asset('assets/images/JMIsinglelogo.jpg',
                            width: 100, height: 100)),
                    Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: Text('STUDENT DATA SHEET',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ))),
                    Container(
                        child: Table(
                            border: TableBorder.all(
                                color: Colors.grey, style: BorderStyle.solid),
                            children: [
                          TableRow(children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('Candidate Name: ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('ABC',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                          ]),
                          TableRow(children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('Enrolment No: ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal)))
                          ]),
                          TableRow(children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text("Father's Name: ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal))),
                          ]),
                          TableRow(children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text("Mother's Name: ",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal))),
                          ]),
                          TableRow(children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('Date of Birth: ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text(' ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))),
                          ]),
                          TableRow(children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('State of Domicile: ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))),
                          ]),
                          TableRow(children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('Nationality: ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))),
                          ]),
                          TableRow(children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('Religion: ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))),
                          ]),
                          TableRow(children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('Whether Staying in Hostel:: ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))),
                          ]),
                          TableRow(children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('Present Address: ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))),
                          ]),
                          TableRow(children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('Permanent Address : ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))),
                          ]),
                          TableRow(children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('Email: ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))),
                          ]),
                          TableRow(children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('Mobile No: ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))),
                          ]),
                          TableRow(children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('Signature: ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))),
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
