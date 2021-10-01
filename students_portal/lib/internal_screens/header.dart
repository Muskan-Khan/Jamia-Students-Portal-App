// background: #39a6f0;
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: BlueShade(),
          child: Container(color: const Color(0xff39a6f0)),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: Image.asset(
                'assets/images/jamialogo.jpg',
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(left: 56.0, top: 75.0),
                child: Text(
                  "CONTROLLER OF EXAMINATION",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ))
          ],
        )
      ],
    );
  }
}

class BlueShade extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height / 7);
    path.lineTo(size.width, size.height / 7);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
