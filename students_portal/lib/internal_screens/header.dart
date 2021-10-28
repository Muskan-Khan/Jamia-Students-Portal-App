import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color(0xff39a6f0),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                      child: Image.asset(
                    'assets/images/jamialogo.jpg',
                  )),
                  const Center(
                      child: Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom: 5),
                    child: Text(
                      "CONTROLLER OF EXAMINATION",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                  ))
                ],
              ),
            ],
          ),
        ));
  }
}
