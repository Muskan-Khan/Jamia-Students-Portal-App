import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color(0xff39a6f0),
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: BlueShade(),
                  child: Container(
                    color: const Color(0xff39a6f0),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 27.0),
                      child: Image.asset(
                        'assets/images/jamialogo.jpg',
                      ),
                    )),
                    const Center(
                        child: Padding(
                      padding: EdgeInsets.only(top: 15.0, bottom: 5),
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
            Container(
              color: const Color(0Xff0171c5),
              height: 50.0,
            ),
          ],
        ));
  }
}

class BlueShade extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height / 5);
    path.lineTo(size.width, size.height / 5);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: const Color(0Xff0171c5),
        height: 50.0,
      ),
    );
  }
}
