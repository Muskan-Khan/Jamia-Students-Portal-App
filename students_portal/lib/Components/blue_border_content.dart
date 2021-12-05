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
  late ImageProvider homeIcon;
  late ImageProvider studentIcon;
  final String studentName;
  BlueBorderContent(
      {Key? key,
      required this.homeIcon,
      required this.studentIcon,
      required this.studentName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(image: homeIcon),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: studentIcon),
            Text(
              studentName,
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.amber[400],
                  decoration: TextDecoration.none),
            )
          ],
        )
      ],
    );
  }
}
