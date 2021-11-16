import 'package:flutter/material.dart';
import 'package:postgres/postgres.dart';

class FetchData{
  String enrolmentNo;
  late String hostname;
  late int port;
  late String database;
  late String username;
  late String password;

  var connection;
  FetchData(String userHostname, int userPort, String userUsername, String userPassword){
    hostname = userHostname;
    port = userPort;
    database = userDatabase;
    username = userUsername;
    password = userPassword;
  }
  Future connect() async
}