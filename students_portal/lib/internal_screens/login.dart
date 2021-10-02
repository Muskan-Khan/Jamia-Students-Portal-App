import 'package:flutter/material.dart';
import 'package:students_portal/internal_screens/header.dart';

class LoginField extends StatelessWidget {
  const LoginField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      const CustomHeader(),
      Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.752,
            color: const Color(0xffeeeeee),
          ),
          LoginFieldHead()
        ],
      )
    ]);
  }
}

class LoginFieldHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Center(
      child: Text(
        "STUDENT",
        style: TextStyle(decoration: null, color: Colors.white, fontSize: 200),
      ),
    );
  }
}
