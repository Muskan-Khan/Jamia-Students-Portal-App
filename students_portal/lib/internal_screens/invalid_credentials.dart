import 'dart:ui';

import 'package:flutter/material.dart';

class InvalidCredentials extends StatelessWidget {
  const InvalidCredentials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Invalid Credentials",
        style: TextStyle(
            color: Colors.red[600],
            decoration: TextDecoration.none,
            fontSize: 25),
      ),
    );
  }
}
