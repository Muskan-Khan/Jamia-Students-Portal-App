import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:students_portal/internal_screens/header.dart';
import 'package:students_portal/Components/blue_border.dart';

class ExamForm extends StatefulWidget {
  final String enrolmentNo;
  final List<String> subjects;
  final String course;
  final String semester;
  const ExamForm({
    Key? key,
    required this.enrolmentNo,
    required this.subjects,
    required this.course,
    required this.semester,
  }) : super(key: key);
  ExamFormState createState() => ExamFormState();
}

class ExamFormState extends State<ExamForm> {
  bool _valueCheck = false;
  
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
                for (var subject in widget.subjects) ...{
                  Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      margin: EdgeInsets.all(0),
                      child: CheckboxListTile(
                        title: Text(subject),
                        value:_valueCheck, 
                        onChanged: (bool? value) {
                          setState(() {
                            _valueCheck = value!;
                          });
                        },
                        // onTap: () {
                        //   setState(() {});
                        // },
                      ))
                }
              ],
            )),
      ],
    ));
  }
}
