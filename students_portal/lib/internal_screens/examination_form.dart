import 'package:flutter/material.dart';
import 'package:students_portal/Database/db_connections.dart';

List<String> appliedSubject = [];

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
  @override
  ExamFormState createState() => ExamFormState();
}

class ExamFormState extends State<ExamForm> {
  @override
  Widget build(BuildContext context) {
    appliedSubject = widget.subjects;
    return Column(
      children: [
        Container(
          height: 38,
          width: double.infinity,
          margin:
              const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 0),
          padding: const EdgeInsets.all(5),
          child: const Text(
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
            margin: const EdgeInsets.only(left: 20, right: 20),
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
                CheckBoxes(
                    enrolmentNo: widget.enrolmentNo,
                    course: widget.course,
                    semester: widget.semester),
              ],
            )),
      ],
    );
  }
}

class CheckBoxes extends StatefulWidget {
  final String enrolmentNo;
  //final List<String> subjects;
  final String course;
  final String semester;
  const CheckBoxes({
    Key? key,
    required this.enrolmentNo,
    required this.course,
    required this.semester,
  }) : super(key: key);

  //const CheckBoxes({Key? key}) : super(key: key);

  @override
  _CheckBoxesState createState() => _CheckBoxesState();
}

class _CheckBoxesState extends State<CheckBoxes> {
  Map<String, bool?> checkValues = {for (var k in appliedSubject) '$k': false};

  var optedSubjects = [];
  getItems() async {
    checkValues.forEach((key, value) {
      if (value == true) {
        optedSubjects.add(key);
      }
    });
    // Printing all selected items on Terminal screen.
    print(optedSubjects);
    // Here you will get all your selected Checkbox items.

    DatabaseConnectivity con =
        DatabaseConnectivity("10.0.2.2", 5432, "postgres", "postgres", "admin");
    await con.connect();
    await con.insertOptedSubjects(
        widget.enrolmentNo, widget.course, widget.semester, optedSubjects);

    // Clear array after use.
    optedSubjects.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: checkValues.keys.map(
            (String key) {
              return CheckboxListTile(
                title: Text(key),
                value: checkValues[key],
                checkColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    checkValues[key] = value;
                  });
                },
              );
            },
          ).toList(),
        ),
        ElevatedButton(onPressed: getItems, child: const Text("Submit"))
      ],
    );
  }
}
