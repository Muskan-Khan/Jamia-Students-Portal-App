import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';
import 'package:students_portal/Components/students_data.dart';
import 'package:students_portal/Components/students_data.dart';

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
    // print("Connection Object Created");
  }

  Future connect() async {
    // print("Called Connect");
    try {
      connection = PostgreSQLConnection(hostname, port, database,
          username: username, password: password);
      await connection.open();
      // print("Connection Created");
    } catch (error) {
      print(error);
    }
    // List<Map<String, Map<String, dynamic>>> results =
    //     await connection.mappedResultsQuery("SELECT name FROM test");
    // await connection.close();
  }

  getAllColumns() {
    return connection.query(
        "SELECT btrim(enrolment_no),btrim(email),btrim(password),btrim(name) FROM student");
  }

  getResults() {
    return connection.query("SELECT btrim(email),btrim(password) FROM student");
  }

  getStudentsData(StudentData sd, String enrolmentNo) async {
    print("Called Get Students Data");

// where enrolment_no = @enrNo

    // PostgreSQLResult
    List<List<dynamic>> results = await connection.query(
        'SELECT enrolment_no,btrim(email),btrim(name),btrim(password),btrim(father_name),btrim(mother_name),btrim(dob),btrim(present_address),btrim(permanent_address),btrim(gender),btrim(blood_group),btrim(identification_mark),btrim(social_category),btrim(nationality),btrim(religion),btrim(date_year_of_admission),btrim(state_of_domicile),btrim(hosteller) FROM student ');
    print("Call Successfully Initiated");
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
      if (row[0] == enrolmentNo) break;
    }
    print(sd);
    print(sd.userEmail);
    print(sd.userStudentName);
    print("Call Successfully Ended");
    // return sd;
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
      exc.toString();
      print(exc);
    }
    return newUserRegistration;
  }

  Future<bool> isAValidUser(TextEditingController userEmail,
      TextEditingController userPassword) async {
    // print("Called isAValidUser");
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
