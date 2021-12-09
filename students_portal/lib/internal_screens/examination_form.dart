import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:students_portal/internal_screens/header.dart';
import 'package:students_portal/Components/blue_border.dart';

class ExamForm extends StatefulWidget {
  ExamFormState createState() => ExamFormState();
}

class ExamFormState extends State<ExamForm> {
  bool value = false;
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          height: 38,
          width: double.infinity,
          margin: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 0),
          padding: EdgeInsets.all(5),
          child: Text(
            'Paper List of MCA 6-sem REGULAR Paper',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          color: Colors.grey[600],
        ),
        Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            color: Colors.white,
            child: Column(
              children: [
                Text(
                  'Follow the userguidline. You first have to click only those papers which you are studying',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Table(
                  border: TableBorder.all(
                      color: Colors.grey, style: BorderStyle.solid),
                  children: [
                    TableRow(children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Text('Subject Name: ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold))),
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Text(' ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold))),
                    ]),
                    TableRow(children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Text('DSA ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal))),
                      Container(
                          //padding: EdgeInsets.all(5),
                          child: Checkbox(
                              value: value,
                              onChanged: (value) {
                                setState(() {
                                  value = value;
                                });
                              })),
                    ]),
                    TableRow(children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Text('Algorithm ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal))),
                      Container(
                          //padding: EdgeInsets.all(5),
                          child: Checkbox(
                              value: value,
                              onChanged: (value) {
                                setState(() {
                                  value = value;
                                });
                              })),
                    ]),
                    TableRow(children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Text('Cloud computing',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal))),
                      Container(
                          //padding: EdgeInsets.all(5),
                          child: Checkbox(
                              value: value,
                              onChanged: (value) {
                                setState(() {
                                  value = value;
                                });
                              })),
                    ]),
                    TableRow(children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Text('DBMS ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal))),
                      Container(
                          //padding: EdgeInsets.all(5),
                          child: Checkbox(
                              value: value,
                              onChanged: (value) {
                                setState(() {
                                  value = value;
                                });
                              })),
                    ]),
                    TableRow(children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Text('CPP ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal))),
                      Container(
                          //padding: EdgeInsets.all(5),
                          child: Checkbox(
                              value: value,
                              onChanged: (value) {
                                setState(() {
                                  value = value;
                                });
                              })),
                    ]),
                    TableRow(children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Text('Discrete Maths ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal))),
                      Container(
                          //padding: EdgeInsets.all(5),
                          child: Checkbox(
                              value: value,
                              onChanged: (value) {
                                setState(() {
                                  value = value;
                                });
                              })),
                    ]),
                    TableRow(children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Text('Java ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal))),
                      Container(
                          //padding: EdgeInsets.all(5),
                          child: Checkbox(
                              value: value,
                              onChanged: (value) {
                                setState(() {
                                  value = value;
                                });
                              })),
                    ]),
                    TableRow(children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Text('Programming in C ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal))),
                      Container(
                          //padding: EdgeInsets.all(5),
                          child: Checkbox(
                              value: value,
                              onChanged: (value) {
                                setState(() {
                                  value = value;
                                });
                              })),
                    ]),
                  ],
                )
              ],
            )),
      ],
    ));
  }
}
