import 'dart:ui';

import 'package:flutter/material.dart';

class BlueBanner extends StatelessWidget {
  final String studentsName;
  const BlueBanner({Key? key, required this.studentsName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0Xff0171c5),
        height: MediaQuery.of(context).size.height / 20,
        width: MediaQuery.of(context).size.width,
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            studentsName,
            style: TextStyle(
              color: Colors.amber[400],
              fontSize: 23,
              decoration: TextDecoration.none,
            ),
          ),
        ));
  }
}
