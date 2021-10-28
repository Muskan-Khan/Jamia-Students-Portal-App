import 'package:flutter/material.dart';
import 'package:students_portal/internal_screens/header.dart';
import 'package:students_portal/Database/db_connections.dart';

import 'package:students_portal/Components/blue_border.dart';

import 'dashboard.dart';

class LoginField extends StatelessWidget {
  const LoginField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const CustomHeader(),
        const BlueBanner(studentsName: " "),
        Stack(
          children: const [LoginFieldHead()],
        )
      ]),
    );
  }
}

class LoginFieldHead extends StatefulWidget {
  const LoginFieldHead({Key? key}) : super(key: key);

  @override
  State<LoginFieldHead> createState() => _LoginFieldHeadState();
}

class _LoginFieldHeadState extends State<LoginFieldHead> {
  final bool _value = false;

  int group = 1;
  get onChanged => null;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        //#This height requires change , it was inserted because without it a weird bar appearing on to of the screen
        height: MediaQuery.of(context).size.width * 1.8,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: const Color(0xff39a6f0),
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset("assets/images/studentIcon.png"),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "STUDENT",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontSize: 25),
                          ),
                          Text(
                            "Student Exam Portal",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontSize: 15),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(
                                    color: Colors.redAccent,
                                    width: 2,
                                    style: BorderStyle.solid),
                              )),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Login Panel",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    decorationStyle: TextDecorationStyle.solid,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Put your Account details",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            decorationStyle: TextDecorationStyle.solid,
                            color: Colors.black),
                      ),
                    ),
                    Material(
                        child: Container(
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: group,
                                  onChanged: onChanged),
                              const Text("With Email Id",
                                  style: TextStyle(
                                    fontSize: 13.5,
                                  )),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                  value: 2,
                                  groupValue: group,
                                  onChanged: onChanged),
                              const Text("With Enrolment No.",
                                  style: TextStyle(
                                    fontSize: 13.5,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    )),
                    const LoginWithEmail(
                      key: null,
                      // getCredentials: setCredentials(userID!, userPassword!)
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginWithEmail extends StatefulWidget {
  const LoginWithEmail({Key? key, getCredentials}) : super(key: key);

  @override
  _LoginWithEmailState createState() => _LoginWithEmailState();
}

final _formKey = GlobalKey<FormState>();

class _LoginWithEmailState extends State<LoginWithEmail> {
  final userEmail = TextEditingController();
  final userPassword = TextEditingController();

  DatabaseConnectivity con = DatabaseConnectivity(
      "10.0.2.2", 5432, "StudentsPortal", "postgres", "Latitude21");
  processInput() async {
    await con.connect();

    final x = await con.isAValidUser(userEmail, userPassword);
//x true signifies a valid user as it is a future it must be assigned before it can be used
    if (x) {
      print("Login Successful");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoggedInCandidateDashboard(
            enrolment: userEmail.text,
          ),
        ),
      );
    } else {
      print("Invalid Credentials");
    }
    // await con.connection.close();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    userEmail.dispose();
    userPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      color: Colors.white,
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Email Id",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    // validator: null,
                    controller: userEmail,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Email Id",
                        contentPadding: EdgeInsets.fromLTRB(5, 1, 5, 1)),
                  )),
              const Text("Password",
                  textAlign: TextAlign.left, style: TextStyle(fontSize: 20)),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: userPassword,
                    // validator: null,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Password",
                        contentPadding: EdgeInsets.fromLTRB(5, 1, 5, 1)),
                  )),
              Center(
                child: ElevatedButton(
                  autofocus: true,
                  clipBehavior: Clip.none,
                  onPressed: processInput,
                  style: ElevatedButton.styleFrom(primary: Colors.blue[800]),
                  child: const Text("Proceed"),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

class LoginWithEnrolment extends StatefulWidget {
  const LoginWithEnrolment({Key? key}) : super(key: key);

  @override
  _LoginWithEnrolmentState createState() => _LoginWithEnrolmentState();
}

class _LoginWithEnrolmentState extends State<LoginWithEnrolment> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Enrolment No",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enrolment No',
                  contentPadding: EdgeInsets.all(5.0)),
            ),
          ),
          const Text("Password",
              textAlign: TextAlign.left, style: TextStyle(fontSize: 20)),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  contentPadding: EdgeInsets.all(5.0)),
            ),
          ),
          Center(
            child: ElevatedButton(
              autofocus: true,
              clipBehavior: Clip.none,
              onPressed: null,
              style: ElevatedButton.styleFrom(primary: Colors.blue[800]),
              child: const Text("Proceed"),
            ),
          )
        ],
      ),
    ));
  }
}
