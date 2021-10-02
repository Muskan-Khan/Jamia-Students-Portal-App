// import 'package:flutter/material.dart';

// class DashboardElements extends StatefulWidget {
//   const DashboardElements({Key? key}) : super(key: key);

//   @override
//   _DashboardElementsState createState() => _DashboardElementsState();
// }

// class _DashboardElementsState extends State<DashboardElements> {
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
//   }

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

import 'package:flutter/material.dart';

/// This is the main application widget.

/// This is the stateless widget that the main application instantiates.

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight / 5,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: <Widget>[
                  Container(
                    // A fixed-height child.
                    color: const Color(0xffeeee00), // Yellow
                    height: 290.0,
                    alignment: Alignment.center,
                  ),
                  Container(
                    // A fixed-height child.
                    color: const Color(0xffee0000), // Yellow
                    height: 490.0,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
