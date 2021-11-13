import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color(0xff39a6f0),
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                      child: Image.asset(
                    'assets/images/jamialogo.jpg',
                  )),
                  const Center(
                      child: Padding(
                    padding: EdgeInsets.only(top: 5.0, bottom: 5),
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
        ));
  }
}

// String newBuyerFuture = '';
// Future<String> registerBuyer(
//     String email, String password, String fName, String lName) async {
//   try {
//     await connection!.open();
//     await connection!.transaction((newBuyerConn) async {
//       newBuyerRegisterResult = await newBuyerConn.query(
//         'insert into myAppData.register (emailDB,passDB,fNameDB,lNameDB,statusDB,roleDB,authDB,registerDateDB)'
//         'values(@emailValue,@passwordValue,@fNameValue,@lNameValue,@statusValue,@roleValue,@authValue,@registrationValue)',
//         substitutionValues: {
//           'emailValue': email,
//           'passwordValue': password,
//           'fNameValue': fName,
//           'lNameValue': lName,
//           'statusValue': true,
//           'roleValue': 'ROLE_BUYER',
//           'authValue': 'buyer',
//           'registrationValue': DateTime.now(),
//         },
//         allowReuse: true,
//         timeoutInSeconds: 30,
//       );
//       newBuyerFuture =
//           (newBuyerRegisterResult!.affectedRowCount > 0 ? 'reg' : 'nop');
//     });
//   } catch (exc) {
//     exc.toString();
//     newBuyerFuture = 'exc';
//   }
//   return newBuyerFuture;
// }
