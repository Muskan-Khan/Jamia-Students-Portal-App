import 'package:flutter/material.dart';
import 'package:students_portal/internal_screens/header.dart';
import 'package:students_portal/internal_screens/dashboard_elements.dart';

class LoggedInCandidateDashboard extends StatelessWidget {
  const LoggedInCandidateDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHeader(),
        // MyStatelessWidget()
        SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 200,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: <Widget>[
                  Container(
                    // A fixed-height child.
                    color: const Color(0xffeeee00), // Yellow
                    height: 220.0,
                    alignment: Alignment.center,
                  ),
                  Container(
                    // A fixed-height child.
                    color: const Color(0xffee0000), // Yellow
                    height: 190.0,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
