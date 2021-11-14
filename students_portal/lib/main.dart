// import 'package:flutter/material.dart';
// import 'package:students_portal/internal_screens/dashboard.dart';
// import 'package:students_portal/internal_screens/header.dart';
// import 'package:students_portal/internal_screens/login.dart';
// import 'internal_screens/registration.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//         backgroundColor: Colors.grey[200],
//         body: const Center(
//           child:
//               // LoggedInCandidateDashboard(enrolment: "Alpha")
//               LoginField(),
//           // RegistrationForm(),
//         )),
//     debugShowCheckedModeBanner: false,
//   ));
// }

import 'package:flutter/material.dart';
import 'package:students_portal/internal_screens/login.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebViewPlus(
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (controller) {
        controller.loadUrl("assets/webpages/index.html");
      },
      javascriptChannels: {
        JavascriptChannel(
            name: 'Captcha',
            onMessageReceived: (JavascriptMessage message) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const LoginField()));
            })
      },
    ));
  }
}
