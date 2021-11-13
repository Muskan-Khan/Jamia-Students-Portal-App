import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';

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

// String searchCriterion
  getAllColumns() {
    // print("Called getResults");
    return connection.query(
        "SELECT btrim(enrolment),btrim(email),btrim(password),btrim(name) FROM studentscredentials"
        // ,
        // substitutionValues: {"aValue": 3}
        );
  }

  getResults() {
    // print("Called getResults");
    return connection
        .query("SELECT btrim(email),btrim(password) FROM studentscredentials"
            // ,
            // substitutionValues: {"aValue": 3}
            );
  }

  Future<PostgreSQLResult?> insertUserData() async {
    try {
      await connection!
          .transaction((PostgreSQLExecutionContext connection) async {
        newUserRegistration = await connection.query(
          //     """INSERT INTO Student(
          // enrolment_no, name, father_name, mother_name, dob, present_address, permanent_address, gender, blood_group, identification_mark, social_category, nationality, religion, date_year_of_admission, state_of_domicile, hosteller)
          // VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);"""
          'INSERT into studentscredentials (enrolment,email,password,name)'
          'values(@enrolment,@email,@password,@name)',
          substitutionValues: {
            'enrolment': '12345',
            'email': 'zjaweds@outlook',
            'password': 'Password',
            'name': 'Jaid',
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
