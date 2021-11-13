import 'package:flutter/material.dart';
import 'package:students_portal/Database/db_connections.dart';
import 'header.dart';
import 'package:students_portal/Components/blue_border.dart';
import 'package:students_portal/Components/students_data.dart';

class RegistrationForm extends StatelessWidget {
  RegistrationForm({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  StudentData sd = StudentData();
  registerUser() async {
    DatabaseConnectivity con = DatabaseConnectivity(
        "10.0.2.2", 5432, "StudentsPortal", "postgres", "Latitude21");
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
                const BlueBanner(studentsName: " "),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff39a6f0))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
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
                                  controller: sd.userEnrolment,
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
                                  // validator: null,
                                  keyboardType: TextInputType.emailAddress,
                                  controller: sd.userEmail,
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "Email",
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
                                  controller: sd.userStudentId,
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
                                  controller: sd.userCourseId,
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
                                  controller: sd.userDepartmentId,
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
                                  controller: sd.userHOD,
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
                                  controller: sd.userDepartmentName,
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
                            //       // controller: sd.userEmail,
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
                                  controller: sd.userCourseName,
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
                                  controller: sd.userFacultyName,
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
                                  controller: sd.userStudentName,
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
                                  controller: sd.userFatherName,
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
                                  controller: sd.userMotherName,
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
                                  keyboardType: TextInputType.datetime,
                                  controller: sd.userDateOfBirth,
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
                                  controller: sd.userPresentAddress,
                                  // validator: null,
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
                                  controller: sd.userPermanentAddress,
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
                                  controller: sd.userGender,
                                  // validator: null,
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
                                  controller: sd.userBloodGroup,
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
                                  controller: sd.userIdentificationMark,
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
                                  controller: sd.userSocialCategory,
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
                                  controller: sd.userNationality,
                                  // validator: null,
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
                                  controller: sd.userReligion,
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
                                  controller: sd.userDateYearOfAdmission,
                                  // validator: null,
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
                                  controller: sd.userStateOfDomicile,
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
                                  controller: sd.userAHostler,
                                  // validator: null,
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
                                onPressed: registerUser,
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
                )
              ],
            )),
      ),
    );
  }
}
