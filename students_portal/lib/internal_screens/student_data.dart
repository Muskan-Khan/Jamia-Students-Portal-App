import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:students_portal/Components/blue_border_content.dart';
import 'package:students_portal/internal_screens/header.dart';
import 'package:students_portal/Components/blue_border.dart';
import 'package:students_portal/Components/students_data.dart';

class StudentDataScreen extends StatelessWidget {
  final StudentData studentData;
  final String enrolmentNo;
  const StudentDataScreen(
      {Key? key, required this.studentData, required this.enrolmentNo})
      : super(key: key);
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
                  studentName: studentData.userStudentName,
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
                          child: Text('View',
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
                    'Student Data',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  color: Colors.grey[600],
                ),
<<<<<<< HEAD
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
                        child: const Text('STUDENT DATA SHEET',
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
                                padding: const EdgeInsets.all(5),
                                child: Text('Candidate Name: ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))),
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text(studentData.userStudentName,
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
                                child: Text('19MCA011',
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
                                child: Text('XYZ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
=======
                Container(
                  margin: const EdgeInsets.all(30),
                  color: Colors.white,
                  //decoration: BoxDecoration(
                  //border: Border.all(color: //Colors.pink),
                  //),
                  child: Column(
                    children: [
                      Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: const Text('Jamia Millia Islamia',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ))),
                      Container(
                          padding: const EdgeInsets.all(5),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)),
                          child: Image.asset('assets/images/JMIsinglelogo.jpg',
                              width: 100, height: 100)),
                      Container(
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)),
                          child: const Text('STUDENT DATA SHEET',
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
                                  padding: const EdgeInsets.all(5),
                                  child: const Text('Candidate Name: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Text(studentData.userStudentName,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ))),
                            ]),
                            TableRow(children: [
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: const Text('Enrolment No: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Text(studentData.userEnrolment,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
>>>>>>> main
                                        fontSize: 18,
                                      )))
                            ]),
                            TableRow(children: [
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: const Text("Father's Name: ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Text(studentData.userFatherName,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontSize: 18,
<<<<<<< HEAD
                                        fontWeight: FontWeight.bold))),
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('PQR',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
=======
                                      ))),
                            ]),
                            TableRow(children: [
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: const Text("Mother's Name: ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Text(studentData.userMotherName,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
>>>>>>> main
                                        fontSize: 18,
                                      ))),
                            ]),
                            TableRow(children: [
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: const Text('Date of Birth: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Text(studentData.userDateOfBirth,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontSize: 18,
<<<<<<< HEAD
                                        fontWeight: FontWeight.bold))),
                            Container(
                                padding: EdgeInsets.all(5),
                                child: Text('2 Nov 1997',
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
                                child: Text('Bihar',
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
                                child: Text('Indian',
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
                                child: Text('Islam',
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
                                child: Text('No',
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
                                child: Text('Patna, Bihar',
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
                                child: Text('Okhla, New Delhi',
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
                                child: Text('abc@gmail.com',
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
                                child: Text('12345',
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
                                child: Text('ABC',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))),
                          ])
                        ])),
                  ],
=======
                                      ))),
                            ]),
                            TableRow(children: [
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: const Text('State of Domicile: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Text(studentData.userStateOfDomicile,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ))),
                            ]),
                            TableRow(children: [
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: const Text('Nationality: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Text(studentData.userNationality,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ))),
                            ]),
                            TableRow(children: [
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: const Text('Religion: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Text(studentData.userReligion,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ))),
                            ]),
                            TableRow(children: [
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: const Text(
                                      'Whether Staying in Hostel:: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Text(studentData.userAHostler,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ))),
                            ]),
                            TableRow(children: [
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: const Text('Present Address: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Text(studentData.userPresentAddress,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ))),
                            ]),
                            TableRow(children: [
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: const Text('Permanent Address : ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Text(studentData.userPermanentAddress,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ))),
                            ]),
                            TableRow(children: [
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: const Text('Email: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Text(studentData.userEmail,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ))),
                            ]),
                            TableRow(children: [
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: const Text('Mobile No: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: const Text("Mobile No.",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ))),
                            ]),
                            TableRow(children: [
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: const Text('Signature: ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Container(
                                  padding: const EdgeInsets.all(5),
                                  child: const Text('Signature',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ))),
                            ])
                          ])),
                    ],
                  ),
>>>>>>> main
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
