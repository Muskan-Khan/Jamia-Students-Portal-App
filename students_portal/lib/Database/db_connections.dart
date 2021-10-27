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

  // late bool isAValidUser;
  // late List<List<dynamic>> getResults;
  // ignore: prefer_typing_uninitialized_variables
  var connection;
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

  getResults() {
    // print("Called getResults");
    return connection.query(
        "SELECT btrim(email),btrim(password) FROM studentscredentials",
        substitutionValues: {"aValue": 3});
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
      } else {
        return false;
      }
    }
    return false;
  }
}
