import 'package:doctor_app/pages/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SelectBloodGroupScreen extends StatelessWidget {
  static const routeName = 'select-blood-group-screen';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: size.height * .05,
            ),
            // Select Blood Group
            Text("Select Blood Group",
                style: const TextStyle(
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w600,
                    fontFamily: "Montserrat",
                    fontStyle: FontStyle.normal,
                    fontSize: 16.0),
                textAlign: TextAlign.left),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                typeBlood(context, "A+", 1),
                typeBlood(context, "A-", 2),
                typeBlood(context, "B+", 3),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                typeBlood(context, "B-", 1),
                typeBlood(context, "O+", 3),
                typeBlood(context, "O-", 1),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                typeBlood(context, "AB+", 2),
                typeBlood(context, "AB-", 3),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget typeBlood(BuildContext context, String name, int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 23),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, SignUpScreen.routeName, arguments: name);
        },
        child: Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xffd1d1d1), width: 1),
              color: const Color(0xffffffff)),
          child: Center(
            child: // A+
                Text(name,
                    style: const TextStyle(
                        color: const Color(0xfffa0000),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat",
                        fontStyle: FontStyle.normal,
                        fontSize: 16.0),
                    textAlign: TextAlign.left),
          ),
        ),
      ),
    );
  }
}
