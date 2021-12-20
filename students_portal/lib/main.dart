import 'package:flutter/material.dart';
import 'package:students_portal/Database/db_connections.dart';
import 'package:students_portal/internal_screens/dashboard.dart';
//import 'package:students_portal/internal_screens/header.dart';
// import 'package:students_portal/internal_screens/login.dart';
// import 'internal_screens/registration.dart';
import 'internal_screens/login.dart';
import 'internal_screens/student_data.dart';
import 'package:students_portal/internal_screens/examination_form_screen.dart';

DatabaseConnectivity dcs = DatabaseConnectivity(
    "10.0.2.2", 5432, "StudentsPortal", "postgres", "Latitude21");
void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child:
              // LoggedInCandidateDashboard(enrolment: "Alpha")
              // LoginField(),
              // RegistrationForm(),
              ExamFormScreen(
            course: '',
            dc: dcs,
            enrolmentNo: '',
          ),
        )),
    debugShowCheckedModeBanner: false,
  ));
}

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//         backgroundColor: Colors.grey[200],
//         body: Center(
//           child:
//               // LoggedInCandidateDashboard(enrolmentNo: "Alpha", name: "Beta")
//               LoginField(),
//           // RegistrationForm(),
//           // StudentData(),
//         )),
//     debugShowCheckedModeBanner: false,
//   ));
// }

// import 'package:flutter/material.dart';
// import 'package:students_portal/internal_screens/login.dart';
// import 'package:webview_flutter_plus/webview_flutter_plus.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: WebViewPlus(
//       javascriptMode: JavascriptMode.unrestricted,
//       onWebViewCreated: (controller) {
//         controller.loadUrl("assets/webpages/index.html");
//       },
//       javascriptChannels: {
//         JavascriptChannel(
//             name: 'Captcha',
//             onMessageReceived: (JavascriptMessage message) {
//               Navigator.pushReplacement(context,
//                   MaterialPageRoute(builder: (context) => const LoginField()));
//             })
//       },
//     ));
//   }
// }

// ignore_for_file: import_of_legacy_library_into_null_safe

// import 'package:flutter/material.dart';
// import 'package:g_captcha/g_captcha.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// // TODO
// const String CAPTCHA_SITE_KEY = "6LeNP4AdAAAAAOLlMh53wis8jlu2dvHU7oA2Vf9H";

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {

//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Plugin example app'),
//           ),
//           body: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                   onPressed: _openReCaptcha, child: Text('reCaptcha')),
//             ],
//           )),
//     );
//   }

//   _openReCaptcha() async {
//     String tokenResult = await GCaptcha.reCaptcha(CAPTCHA_SITE_KEY);
//     print('tokenResult: $tokenResult');
//     Fluttertoast.showToast(msg: tokenResult, timeInSecForIosWeb: 4);

//     // setState
//   }
// }

// import 'package:flutter/material.dart';
// import 'WelcomePage.dart';
// import 'package:webview_flutter_plus/webview_flutter_plus.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: WebViewPlus(
//       javascriptMode: JavascriptMode.unrestricted,
//       onWebViewCreated: (controller) {
//         controller.loadUrl("assets/webpages/index.html");
//       },
//       javascriptChannels: Set.from([
//         JavascriptChannel(
//             name: 'Captcha',
//             onMessageReceived: (JavascriptMessage message) {
//               Navigator.pushReplacement(context,
//                   MaterialPageRoute(builder: (context) => WelcomePage()));
//             })
//       ]),
//     ));
//   }
// }
