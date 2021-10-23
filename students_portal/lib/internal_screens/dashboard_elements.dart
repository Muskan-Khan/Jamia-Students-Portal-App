import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardElements extends StatefulWidget {
  final String value;
  const DashboardElements({Key? key, required this.value}) : super(key: key);

  @override
  _DashboardElementsState createState() => _DashboardElementsState();
}

class _DashboardElementsState extends State<DashboardElements> {
//   Widget cont(Color color) {
//     return Container(
//       height: 142.6,
//       width: 200,
//       color: color,
//     );
//   }

//   // ignore: non_constant_identifier_names
//   Widget RecordInterface(String interfaceString) {
//     return Card(
//       elevation: 50,
//       shape: RoundedRectangleBorder(
//         side: const BorderSide(
//           color: Colors.black,
//           width: 150,
//         ),
//         borderRadius: BorderRadius.circular(50),
//       ),
//       child: SizedBox(
//           width: 200.8,
//           height: 100.9,
//           child: Center(
//               child: Container(
//             color: Colors.red,
//             padding: const EdgeInsets.all(10.0),
//             child: Text(
//               interfaceString,
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 fontFamily: 'OtomanopeeOne-Regular',
//                 fontSize: 15,
//                 color: Colors.white,
//               ),
//             ),
//           ))),
//     );

  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: EdgeInsets.only(top: 30),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(30), boxShadow: [
        // BoxShadow(
        //   color: Colors.blue.shade300,
        //   spreadRadius: 1,
        //   //offset: Offset(0, 2),
        // ),
        BoxShadow(
            color: Colors.blue.shade300,
            offset: Offset(0, -2),
            spreadRadius: 0.2),
      ]),
      child: Card(
        elevation: 50,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.transparent,
//           width: 150,
            ),
            borderRadius: BorderRadius.circular(15)),
        color: Colors.blueAccent[100],
        // child: Padding(padding: const EdgeInsets.all(0.0),
        // child: ClipRRect(
        //   borderRadius: BorderRadius.only(
        //     topLeft: Radius.circular(25.0),
        //     topRight: Radius.circular(25.0),
        //     bottomLeft: Radius.circular(25.0),
        //     bottomRight: Radius.circular(25.0),
        //   ),
        //   child: Align(
        //     alignment: Alignment.bottomRight,
        //   ),
        // ),),
        child: SizedBox(
          width: 200,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 90,
                    child: Column(children: [
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        height: 100,
                        width: 100,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://cdn2.iconfinder.com/data/icons/user-23/512/User_Generic_1.png"),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 40),
                        child: Text(
                          widget.value,
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ]))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Expanded(
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               cont(Colors.red),
//               cont(Colors.yellowAccent),
//               cont(Colors.indigo),
//               cont(Colors.black),
//               cont(Colors.blue),
//             ]),
//       ),
//     );
//   }
// }



//import 'package:flutter/material.dart';

/// This is the main application widget.

/// This is the stateless widget that the main application instantiates.

/// This is the stateless widget that the main application instantiates.
// class MyStatelessWidget extends StatelessWidget {
//   const MyStatelessWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         cont(Colors.green),
//         cont(Colors.blue),
//         cont(Colors.orange),
//         cont(Colors.redAccent),
//       ],
//     );
//   }
// }
