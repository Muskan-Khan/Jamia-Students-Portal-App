import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
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
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  margin: EdgeInsets.all(20),
                  child: DataTable(showBottomBorder: true, columns: [
                    DataColumn(
                        label: Text('Subject',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(label: Text(' '))
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Container(
                          width: 250, child: Text('Programming in C'))),
                      DataCell(Container(
                        width: 80,
                        child: Container(
                            child: Checkbox(
                                value: value,
                                onChanged: (value) {
                                  setState(() {
                                    value = value;
                                  });
                                })),
                      ))
                    ]),
                    DataRow(cells: [
                      DataCell(Container(width: 250, child: Text('DBMS'))),
                      DataCell(Container(
                        width: 80,
                        child: Container(
                            child: Checkbox(
                                value: value,
                                onChanged: (value) {
                                  setState(() {
                                    value = value;
                                  });
                                })),
                      ))
                    ]),
                    DataRow(cells: [
                      DataCell(
                          Container(width: 250, child: Text('Algorithms'))),
                      DataCell(Container(
                        width: 80,
                        child: Container(
                            child: Checkbox(
                                value: value,
                                onChanged: (value) {
                                  setState(() {
                                    value = value;
                                  });
                                })),
                      ))
                    ]),
                    DataRow(cells: [
                      DataCell(Container(width: 250, child: Text('DSA'))),
                      DataCell(Container(
                        width: 80,
                        child: Container(
                            child: Checkbox(
                                value: value,
                                onChanged: (value) {
                                  setState(() {
                                    value = value;
                                  });
                                })),
                      ))
                    ]),
                    DataRow(cells: [
                      DataCell(
                          Container(width: 250, child: Text('Discrete Maths'))),
                      DataCell(Container(
                        width: 80,
                        child: Container(
                            child: Checkbox(
                                value: value,
                                onChanged: (value) {
                                  setState(() {
                                    value = value;
                                  });
                                })),
                      ))
                    ])
                  ]),
                )
              ],
            )),
      ],
    ));
  }
}
