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

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        cont(Colors.green),
        cont(Colors.blue),
        cont(Colors.orange),
        cont(Colors.redAccent),
      ],
    );
  }
}
