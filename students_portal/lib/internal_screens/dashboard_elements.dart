import 'package:flutter/material.dart';

class DashboardElements extends StatefulWidget {
  const DashboardElements({Key? key}) : super(key: key);

  @override
  _DashboardElementsState createState() => _DashboardElementsState();
}

class _DashboardElementsState extends State<DashboardElements> {
  Widget cont(Color color) {
    return Container(
      height: 142.6,
      width: 200,
      color: color,
    );
  }

  // ignore: non_constant_identifier_names
  Widget RecordInterface(String interfaceString) {
    return Card(
      elevation: 50,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.black,
          width: 150,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: SizedBox(
          width: 200.8,
          height: 100.9,
          child: Center(
              child: Container(
            color: Colors.red,
            padding: const EdgeInsets.all(10.0),
            child: Text(
              interfaceString,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'OtomanopeeOne-Regular',
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // RecordInterface("Students Data"),
            // RecordInterface("Students Data"),
            // RecordInterface("Students Data"),
            // RecordInterface("Students Data"),
            // RecordInterface("Students Data"),
            cont(Colors.green),
            cont(Colors.blue),
            cont(Colors.orange),
            cont(Colors.redAccent),
          ],
        ),
      ),
    );
  }
}
