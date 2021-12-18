import 'package:flutter/material.dart';
import 'package:students_portal/Components/blue_border_content.dart';
import 'package:students_portal/Components/students_data.dart';
import 'package:students_portal/internal_screens/header.dart';
import 'package:students_portal/Database/db_connections.dart';
import 'registration.dart';
import 'package:students_portal/Components/blue_border.dart';
import 'dashboard.dart';
import 'invalid_credentials.dart';

class LoginField extends StatelessWidget {
  const LoginField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        const CustomHeader(),
        BlueBanner(
          studentDataHeading: BlueBorderContent(
            homeIcon: "assets/images/transparent.png",
            studentIcon: "assets/images/transparent.png",
            studentName: " ",
          ),
        ),
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
//For controlling the Credentials whether Email or Enrolment no. for login
  bool isEmailSelected = true;

//For controlling the Credentials whether Email or Enrolment no. for login
  void updateStatus(bool selectedStatus) {
    setState(() {
      isEmailSelected = selectedStatus;
    });
  }

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
                    FormControlsForLogin(
//For controlling the Credentials whether Email or Enrolment no. for login
                      onSonChanged: (bool status) {
                        updateStatus(status);
                      },
                    ),

//For controlling the Credentials whether Email or Enrolment no. for login

                    if (isEmailSelected) ...[
                      const LoginWithEmail()
                    ] else ...[
                      const LoginWithEnrolment()
                    ]
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

//For changing radio button status
enum LoginIds { email, enrolment }

//For controlling the Credentials whether Email or Enrolment no. for login
// Step 1: Define a Callback.
typedef IntCallback = void Function(bool status);

class FormControlsForLogin extends StatefulWidget {
//For controlling the Credentials whether Email or Enrolment no. for login
  final IntCallback onSonChanged;
  const FormControlsForLogin({Key? key, required this.onSonChanged})
      : super(key: key);

  @override
  _FormControlsForLoginState createState() => _FormControlsForLoginState();
}

class _FormControlsForLoginState extends State<FormControlsForLogin> {
  int val = 1;
  LoginIds? _character = LoginIds.email;

//For controlling the Credentials whether Email or Enrolment no. for login
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Row(
            children: [
              Radio<LoginIds>(
                  value: LoginIds.email,
                  groupValue: _character,
                  onChanged: (LoginIds? value) {
//For controlling the Credentials whether Email or Enrolment no. for login
                    widget.onSonChanged(status);
                    setState(() {
                      _character = value;
                    });
                  }),
              const Text("With Email Id",
                  style: TextStyle(
                    fontSize: 13.5,
                  )),
            ],
          ),
          Row(
            children: [
              Radio<LoginIds>(
                  value: LoginIds.enrolment,
                  groupValue: _character,
                  onChanged: (LoginIds? value) {
//For controlling the Credentials whether Email or Enrolment no. for login
                    widget.onSonChanged(false);
                    setState(() {
                      _character = value;
                    });
                  }),
              const Text("With Enrolment No.",
                  style: TextStyle(
                    fontSize: 13.5,
                  )),
            ],
          ),
        ],
      ),
    ));
  }
}

class LoginWithEmail extends StatefulWidget {
  const LoginWithEmail({Key? key}) : super(key: key);

  @override
  _LoginWithEmailState createState() => _LoginWithEmailState();
}

final _formKey = GlobalKey<FormState>();

class _LoginWithEmailState extends State<LoginWithEmail> {
  final userEmail = TextEditingController();
  final userPassword = TextEditingController();

  DatabaseConnectivity con = DatabaseConnectivity(
      "10.0.2.2", 5432, "StudentsPortal", "postgres", "admin");
  processInput() async {
    await con.connect();
    List<List<dynamic>> allColumns = await con.getAllColumns();
    String studentsName = " ";
    String enrolmentNo = " ";
    bool isValidUser(
        TextEditingController userEmail, TextEditingController userPassword) {
      for (final row in allColumns) {
        String id = row[1];
        String password = row[2];
        print(id);
        print(password);
        if (userEmail.text == id && userPassword.text == password) {
          enrolmentNo = row[0];
          studentsName = row[3];
          return true;
        }
      }
      return false;
    }

    print("Calling Validation");
    final x = isValidUser(userEmail, userPassword);

    userEmail.clear();
    userPassword.clear();
    // print(x);
    // + (con).toString()
    //x true signifies a valid user as it is a future it must be assigned before it can be used
    if (x) {
      print("Login Successful! ");
      await con.connect();
      print("Name is: " + studentsName);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoggedInCandidateDashboard(
            enrolmentNo: enrolmentNo,
            name: studentsName,
            conn: con,
          ),
        ),
      );
    } else {
      print("Invalid Credentials");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const InvalidCredentials()),
      );
    }
    // await con.connection.close();
  }

  callRegistration() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegistrationForm()),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  // clearFormFields() {
  //   userEmail.clear();
  //   userPassword.clear();
  // }

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
                    obscureText: true,
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
              ),
              Center(
                child: ElevatedButton(
                  autofocus: true,
                  clipBehavior: Clip.none,
                  onPressed: callRegistration,
                  style: ElevatedButton.styleFrom(primary: Colors.blue[800]),
                  child: const Text("New Student Registration"),
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
  final _formKey = GlobalKey<FormState>();

  final userEnrolment = TextEditingController();
  final userPassword = TextEditingController();

  DatabaseConnectivity con = DatabaseConnectivity(
      "10.0.2.2", 5432, "StudentsPortal", "postgres", "admin");
  processEnrolmentInput() async {
    await con.connect();
    List<List<dynamic>> allColumns = await con.getAllColumns();
    String studentsName = " ";
    String enrolmentNo = " ";
    bool isValidUser(TextEditingController userEnrolment,
        TextEditingController userPassword) {
      for (final row in allColumns) {
        String id = row[0];
        String password = row[2];
        print(id);
        print(password);
        if (userEnrolment.text == id && userPassword.text == password) {
          enrolmentNo = row[0];
          studentsName = row[3];
          return true;
        }
      }
      return false;
    }

    final x = isValidUser(userEnrolment, userPassword);

    userEnrolment.clear();
    userPassword.clear();
    // print(x);
//x true signifies a valid user as it is a future it must be assigned before it can be used
    if (x) {
      print("Login Successful");

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoggedInCandidateDashboard(
            enrolmentNo: enrolmentNo,
            name: studentsName,
            conn: con,
          ),
        ),
      );
    } else {
      print("Invalid Credentials");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const InvalidCredentials()),
      );
    }
    // await con.connection.close();
  }

  callRegistration() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegistrationForm()),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    userEnrolment.dispose();
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
                "Enrolment No.",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    // validator: null,
                    controller: userEnrolment,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enrolment No.",
                        contentPadding: EdgeInsets.fromLTRB(5, 1, 5, 1)),
                  )),
              const Text("Password",
                  textAlign: TextAlign.left, style: TextStyle(fontSize: 20)),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    obscureText: true,
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
                  onPressed: processEnrolmentInput,
                  style: ElevatedButton.styleFrom(primary: Colors.blue[800]),
                  child: const Text("Proceed"),
                ),
              ),
              Center(
                child: ElevatedButton(
                  autofocus: true,
                  clipBehavior: Clip.none,
                  onPressed: callRegistration,
                  style: ElevatedButton.styleFrom(primary: Colors.blue[800]),
                  child: const Text("New Student Registration"),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
