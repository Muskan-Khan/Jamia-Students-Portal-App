import 'package:flutter/material.dart';
import 'package:students_portal/internal_screens/header.dart';

class LoginField extends StatelessWidget {
  const LoginField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      const CustomHeader(),
      Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.752,
            color: const Color(0xffeeeeee),
          ),
          LoginFieldHead()
        ],
      )
    ]);
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
                                fontSize: 35),
                          ),
                          Text(
                            "Student Exam Portal",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontSize: 20),
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
                                    fontSize: 16,
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
                                    fontSize: 16,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // const LoginWithEmail(
                    //   key: null,
                    // ),
                    const LoginWithEnrolment(
                      key: null,
                    ),
                    ElevatedButton(
                      autofocus: true,
                      clipBehavior: Clip.none,
                      onPressed: null,
                      style:
                          ElevatedButton.styleFrom(primary: Colors.blue[800]),
                      child: const Text("Proceed"),
                    )
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
  const LoginWithEmail({Key? key}) : super(key: key);

  @override
  _LoginWithEmailState createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Email Id",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email Id',
                  contentPadding: EdgeInsets.all(5.0)),
            ),
          ),
          Text("Password",
              textAlign: TextAlign.left, style: TextStyle(fontSize: 20)),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  contentPadding: EdgeInsets.all(5.0)),
            ),
          ),
        ],
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
        children: const [
          Text(
            "Enrolment No",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enrolment No',
                  contentPadding: EdgeInsets.all(5.0)),
            ),
          ),
          Text("Password",
              textAlign: TextAlign.left, style: TextStyle(fontSize: 20)),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  contentPadding: EdgeInsets.all(5.0)),
            ),
          ),
        ],
      ),
    ));
  }
}
