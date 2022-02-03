import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';
import 'package:students_portal/Components/students_data.dart';
import 'package:students_portal/Components/students_grade.dart';

class DatabaseConnectivity {
  late String hostname;
  late int port;
  late String database;
  late String username;
  late String password;

  final userEmail = TextEditingController();
  final userPassword = TextEditingController();

  // ignore: prefer_typing_uninitialized_variables
  var connection;

  PostgreSQLResult? newUserRegistration;
  DatabaseConnectivity(String userHostname, int userPort, String userDatabase,
      String userUsername, String userPassword) {
    hostname = userHostname;
    port = userPort;
    database = userDatabase;
    username = userUsername;
    password = userPassword;
  }

  Future connect() async {
    try {
      connection = PostgreSQLConnection(hostname, port, database,
          username: username, password: password,useSSL: true);
      print("Opening connection");
      await connection.open();
    } catch (error) {
      // AlertDialog(
      // title: Text(
      print(error.toString());
      // ),
      // );
    }
  }

  getGradeData(String enrolmentNo) async {
    List<List<dynamic>> results = await connection.query(
        'SELECT enrolment_no,semester,session,exam_type,honours,cardurl FROM gradecard where enrolment_no = @enNo',
        substitutionValues: {"enNo": enrolmentNo});
    int i = 0;

    GradeData f = GradeData();
    List<GradeData> gds =
        List<GradeData>.filled(results.length, f, growable: true);
    for (final row in results) {
      GradeData g = GradeData();
      g.userEnrolment = row[0];
      g.semester = row[1];
      g.session = row[2];
      g.examType = row[3];
      g.honours = row[4];
      g.cardURL = row[5];
      gds[i] = g;
      i++;
    }
    return gds;
  }

  getAllColumns() {
    return connection.query(
        "SELECT btrim(enrolment_no),btrim(email),btrim(password),btrim(name) FROM Student");
  }

  getResults() {
    return connection.query("SELECT btrim(email),btrim(password) FROM Student");
  }

  getStudentsData(StudentData sd, String enrolmentNo) async {
    List<List<dynamic>> results = await connection.query(
        'SELECT enrolment_no,btrim(email),btrim(name),btrim(password),btrim(father_name),btrim(mother_name),btrim(dob),btrim(present_address),btrim(permanent_address),btrim(gender),btrim(blood_group),btrim(identification_mark),btrim(social_category),btrim(nationality),btrim(religion),btrim(date_year_of_admission),btrim(state_of_domicile),btrim(hosteller) FROM Student where enrolment_no = @enNo',
        substitutionValues: {"enNo": enrolmentNo});
    for (final row in results) {
      sd.userEnrolment = row[0];
      sd.userEmail = row[1];
      sd.userStudentName = row[2];
      sd.userPassword = row[3];
      sd.userFatherName = row[4];
      sd.userMotherName = row[5];
      sd.userDateOfBirth = row[6];
      sd.userPresentAddress = row[7];
      sd.userPermanentAddress = row[8];
      sd.userGender = row[9];
      sd.userBloodGroup = row[10];
      sd.userIdentificationMark = row[11];
      sd.userSocialCategory = row[12];
      sd.userNationality = row[13];
      sd.userReligion = row[14];
      sd.userDateYearOfAdmission = row[15];
      sd.userStateOfDomicile = row[16];
      sd.userAHostler = row[17];
    }
  }

  getCourse(String enrolmentNo) async {
    print("Called getCourse");
    String course = "";
    List<List<dynamic>> results = await connection.query(
        'SELECT btrim(course_id)FROM Enrolled_Courses where enrolment_no = @enNo',
        substitutionValues: {"enNo": enrolmentNo});
    for (final row in results) {
      course = row[0];
    }
    return course;
  }

  getSubjects(String course, String sem) async {
    print("Called getSubjects");
    List<String> subjectCodesList = <String>[];
    int i = 0;
    List<List<dynamic>> results = await connection.query(
        'SELECT btrim(subject_code) FROM course_subjects where course = @course and semester= @sem',
        substitutionValues: {"course": course, "sem": sem});
    for (final row in results) {
      subjectCodesList.add(row[0]);
      print("Hello");
      print(i++);
    }
    return subjectCodesList;
  }

// StudentData studentData
  Future<PostgreSQLResult?> insertUserData(StudentData studentData) async {
    try {
      await connection!
          .transaction((PostgreSQLExecutionContext connection) async {
        newUserRegistration = await connection.query(
          'INSERT into Student (enrolment_no,email, name,password, father_name, mother_name, dob, present_address, permanent_address, gender, blood_group, identification_mark, social_category, nationality, religion, date_year_of_admission, state_of_domicile, hosteller)'
          'values(@enrolment_no,@email, @name, @password, @father_name, @mother_name, @dob, @present_address, @permanent_address, @gender, @blood_group, @identification_mark, @social_category, @nationality, @religion, @date_year_of_admission, @state_of_domicile, @hosteller)',
          substitutionValues: {
            'enrolment_no': studentData.userEnrolment,
            'email': studentData.userEmail,
            'name': studentData.userStudentName,
            'password': studentData.userPassword,
            'father_name': studentData.userFatherName,
            'mother_name': studentData.userMotherName,
            'dob': studentData.userDateOfBirth,
            'present_address': studentData.userPresentAddress,
            'permanent_address': studentData.userPermanentAddress,
            'gender': studentData.userGender,
            'blood_group': studentData.userBloodGroup,
            'identification_mark': studentData.userIdentificationMark,
            'social_category': studentData.userSocialCategory,
            'nationality': studentData.userNationality,
            'religion': studentData.userReligion,
            'date_year_of_admission': studentData.userDateYearOfAdmission,
            'state_of_domicile': studentData.userStateOfDomicile,
            'hosteller': studentData.userAHostler
          },
          allowReuse: true,
          timeoutInSeconds: 30,
        );
      });
    } catch (exc) {
      print(exc.toString());
    }
    return newUserRegistration;
  }

  Future<bool> isAValidUser(TextEditingController userEmail,
      TextEditingController userPassword) async {
    List<List<dynamic>> results = await getResults();
    for (final row in results) {
      String id = row[0];
      String password = row[1];
      if (userEmail.text == id && userPassword.text == password) {
        return true;
      }
    }
    return false;
  }
}
