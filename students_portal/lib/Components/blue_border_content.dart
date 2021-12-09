// import 'package:flutter/material.dart';

// class BlueBorderContent extends class name extends StatelessWidget {
//   const name({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// } {
//   final Row headerIcons;

//   BlueBorderContent(this.headerIcons);
// }

import 'package:flutter/material.dart';

class BlueBorderContent extends StatelessWidget {
  final String homeIcon;
  final String studentIcon;
  final String studentName;
  BlueBorderContent(
      {Key? key,
      required this.studentName,
      required this.homeIcon,
      required this.studentIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0Xff0171c5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: Image.asset(homeIcon),
            onTap: () {},
          ),
          InkWell(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(studentIcon),
                Text(
                  studentName,
                  style: TextStyle(
                      fontSize: 23,
                      color: Colors.amber[400],
                      decoration: TextDecoration.none),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
