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
    return Column(
      
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: const Color(0xff39a6f0),
            child: Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset("assets/images/studentIcon.png"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "STUDENT",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 35),
                      ),
                      Text(
                        "Student Exam Portal",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Login Panel",
                style: TextStyle(
                    decorationColor: Colors.redAccent,
                    decorationThickness: 1,
                    fontSize: 20,
                    decorationStyle: TextDecorationStyle.solid,
                    color: Colors.black),
              )
            ],
          ),
        )
      ],
    );
  }
}
