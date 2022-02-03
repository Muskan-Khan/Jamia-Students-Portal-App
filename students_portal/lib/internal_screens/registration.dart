import 'package:flutter/material.dart';
import 'package:students_portal/Components/blue_border_content.dart';
import 'package:students_portal/Database/db_connections.dart';
import 'header.dart';
import 'package:students_portal/Components/blue_border.dart';
import 'package:students_portal/Components/students_data.dart';
import '../Components/db_password.dart' as globals;

class RegistrationForm extends StatefulWidget {
  RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final userEmail = TextEditingController();

  final userPassword = TextEditingController();

  final userEnrolment = TextEditingController();

  final userStudentId = TextEditingController();

  final userCourseId = TextEditingController();

  final userDepartmentId = TextEditingController();

  final userHOD = TextEditingController();

  final userDepartmentName = TextEditingController();

  final userCourseName = TextEditingController();

  final userFacultyName = TextEditingController();

  final userStudentName = TextEditingController();

  final userFatherName = TextEditingController();

  final userMotherName = TextEditingController();

  final userDateOfBirth = TextEditingController();

  final userPresentAddress = TextEditingController();

  final userPermanentAddress = TextEditingController();

  final userGender = TextEditingController();

  final userBloodGroup = TextEditingController();

  final userIdentificationMark = TextEditingController();

  final userSocialCategory = TextEditingController();

  final userNationality = TextEditingController();

  final userReligion = TextEditingController();

  final userDateYearOfAdmission = TextEditingController();

  final userStateOfDomicile = TextEditingController();

  final userAHostler = TextEditingController();

  registerUser() async {
    StudentData sd = StudentData();
    sd.userEmail = userEmail.text;
    sd.userPassword = userPassword.text;
    sd.userEnrolment = userEnrolment.text;
    sd.userStudentId = userStudentId.text;
    sd.userCourseId = userCourseId.text;
    sd.userDepartmentId = userDepartmentId.text;
    sd.userHOD = userHOD.text;
    sd.userDepartmentName = userDepartmentName.text;
    sd.userCourseName = userCourseName.text;
    sd.userFacultyName = userFacultyName.text;
    sd.userStudentName = userStudentName.text;
    sd.userFatherName = userFatherName.text;
    sd.userMotherName = userMotherName.text;
    sd.userDateOfBirth = userDateOfBirth.text;
    sd.userPresentAddress = userPresentAddress.text;
    sd.userPermanentAddress = userPermanentAddress.text;
    sd.userGender = userGender.text;
    sd.userBloodGroup = userBloodGroup.text;
    sd.userIdentificationMark = userIdentificationMark.text;
    sd.userSocialCategory = userSocialCategory.text;
    sd.userNationality = userNationality.text;
    sd.userReligion = userReligion.text;
    sd.userDateYearOfAdmission = userDateYearOfAdmission.text;
    sd.userStateOfDomicile = userStateOfDomicile.text;
    sd.userAHostler = userAHostler.text;

    DatabaseConnectivity con = DatabaseConnectivity(
        "jmiportal.postgres.database.azure.com",
        5432,
        "studentsportal",
        "jmi_admin",
        globals.db_password);
    await con.connect();
    await con.insertUserData(sd);
    print("Hello");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CustomHeader(),
                BlueBanner(
                  studentDataHeading: BlueBorderContent(
                    homeIcon: 'assets/images/transparent.png',
                    studentIcon: 'assets/images/transparent.png',
                    studentName: " ",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff39a6f0))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Form(
                        key: _formKey,
                        child: Center(
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
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    controller: userEnrolment,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Enrolment No.",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              const Text(
                                "Email",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.emailAddress,
                                    controller: userEmail,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Email",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              const Text(
                                "Password",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // validator: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    obscureText: true,
                                    controller: userPassword,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Password",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),

                              //----------------------------Enrolled Courses Table----------------------------------
                              const Text(
                                "Student Id",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // validator: null,
                                    controller: userStudentId,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Student Id",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              //----------------------------Enrolled Courses Table----------------------------------
                              //----------------------------Student Id Table----------------------------------
                              const Text(
                                "Course Id",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // validator: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    controller: userCourseId,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Course Id",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              //----------------------------Student Id Table----------------------------------
                              //----------------------------Head of the Department Table----------------------------------
                              const Text(
                                "Department Id",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // validator: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    controller: userDepartmentId,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Department",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              const Text(
                                "Head of the Department",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // validator: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    controller: userHOD,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Head of the Department",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              //----------------------------Head of the Department Table----------------------------------
                              //----------------------------Department Table----------------------------------
                              const Text(
                                "Department Name",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // validator: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    controller: userDepartmentName,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Department Name",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              //----------------------------Department Table----------------------------------

                              //----------------------------Courses Table----------------------------------
                              // const Text(
                              //   "Department Id",
                              //   textAlign: TextAlign.left,
                              //   style: TextStyle(fontSize: 20),
                              // ),
                              // Padding(
                              //     padding: const EdgeInsets.all(10.0),
                              //     child: TextFormField(
                              //       // validator: null,
                              //       // controller: userEmail,
                              //       decoration: const InputDecoration(
                              //           border: OutlineInputBorder(),
                              //           hintText: "Department Id",
                              //           contentPadding:
                              //               EdgeInsets.fromLTRB(5, 1, 5, 1)),
                              //     )),
                              const Text(
                                "Course Name",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // validator: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    controller: userCourseName,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Course Name",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              //----------------------------Courses Table----------------------------------

                              //----------------------------Faculty Table----------------------------------
                              const Text(
                                "Faculty",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // validator: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    controller: userFacultyName,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Faculty",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              //----------------------------Faculty Table----------------------------------
                              const Text("Student Name",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 20)),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // obscureText: true,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    controller: userStudentName,
                                    // validator: null,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Student Name",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              const Text(
                                "Father's Name",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // validator: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    controller: userFatherName,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Father's Name",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              const Text("Mother's Name",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 20)),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // obscureText: true,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    controller: userMotherName,
                                    // validator: null,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Mother's Name",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              const Text(
                                "Date of Birth",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // validator: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.datetime,
                                    controller: userDateOfBirth,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Date of Birth",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              const Text("Present Address",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 20)),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // obscureText: true,
                                    controller: userPresentAddress,
                                    // validator: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Present Address",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              const Text(
                                "Permanent Address",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // validator: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    controller: userPermanentAddress,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Permanent Address",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              const Text("Gender",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 20)),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // obscureText: true,
                                    controller: userGender,
                                    // validator: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Gender",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              const Text(
                                "Blood Group",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // validator: null,
                                    controller: userBloodGroup,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Blood Group",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              const Text("Identification Mark",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 20)),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // obscureText: true,
                                    controller: userIdentificationMark,
                                    // validator: null,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Identification Mark",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              const Text(
                                "Social Category",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // validator: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    controller: userSocialCategory,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Social Category",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              const Text("Nationality",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 20)),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // obscureText: true,
                                    controller: userNationality,
                                    // validator: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Nationality",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              const Text(
                                "Religion",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // validator: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    controller: userReligion,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Religion",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              const Text("Date / Year of Admission",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 20)),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // obscureText: true,
                                    controller: userDateYearOfAdmission,
                                    // validator: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Date / Year of Admission",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              const Text(
                                "State of Domicile",
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // validator: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    controller: userStateOfDomicile,
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "State of Domicile",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              const Text("Hostler",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 20)),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    // obscureText: true,
                                    controller: userAHostler,
                                    // validator: null,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Invalid Data';
                                      }
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Hostler",
                                        contentPadding:
                                            EdgeInsets.fromLTRB(5, 1, 5, 1)),
                                  )),
                              Center(
                                child: ElevatedButton(
                                  autofocus: true,
                                  clipBehavior: Clip.none,
                                  onPressed: () {
                                    // Validate returns true if the form is valid, or false otherwise.
                                    if (_formKey.currentState!.validate()) {
                                      registerUser();
                                      // If the form is valid, display a snackbar. In the real world,
                                      // you'd often call a server or save the information in a database.
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content: Text('Processing Data')),
                                      );
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.blue[800]),
                                  child: const Text("Submit"),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
