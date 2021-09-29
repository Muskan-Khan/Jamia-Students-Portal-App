import 'package:flutter/material.dart';

void main() {
  runApp(const Background());
}

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // title: Text('Background'),
          toolbarHeight: 1,
        ),
        body: Stack(
          children: [
            ClipPath(
              clipper: BlueShade(),
              child: Container(color: const Color(0xff39a6f0)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: Image.asset(
                'assets/images/jamialogo.jpg',
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(left: 56.0, top: 75.0),
                child: Text(
                  "Controller of Examination",
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
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


// Stack(children[
//                   ClipPath(
//           clipper: BlueShade(),
//           child: Container(color: const Color(0xff39a6f0)),
//         ),
//           Center(
//                 child: Image.asset(
//                   'assets/images/jmilogo.png',
//                 ),
//               ),
//         ]