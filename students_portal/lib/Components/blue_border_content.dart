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
  final ImageProvider homeIcon;
  final ImageProvider studentIcon;
  final String studentName;
  const BlueBorderContent(
      {Key? key,
      required this.homeIcon,
      required this.studentIcon,
      required this.studentName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(image: homeIcon),
        Image(image: studentIcon),
        Text(studentName)
      ],
    );
  }
}
