import 'package:doctor_app/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppointmentDoneScreen extends StatelessWidget {


  static const routeName = 'appointment-done-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffbcc4f3),
                Color(0xffc6cdf5),
              ],
            )
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/done_check.svg',
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  // Thank you
                  SizedBox(height: 7,),
                  Text("Thank you",
                      style: const TextStyle(
                        letterSpacing: 2,
                          color: const Color(0xff7172f8),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 16.0),
                      textAlign: TextAlign.left),
                  // Your Appointment Created
                  SizedBox(height: 5,),
                  Text("Your Appointment Created",
                      style: const TextStyle(
                          color: const Color(0xff575757),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 16.0),
                      textAlign: TextAlign.left),

                  SizedBox(height: 5,),
                  Text("Waiting for doctor to aprove",
                      style: const TextStyle(
                          color: const Color(0xff575757),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0),
                      textAlign: TextAlign.left)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: // Rectangle 22
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, MyHomePage.routeName) ;
                      },
                      child: Container(
                  width: 326,
                  height: 38,
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xff6a6bfe),
                              offset: Offset(0, 10),
                              blurRadius: 40,
                              spreadRadius: 0)
                        ],
                        color: const Color(0xff6a6bfe)),
                  child: Center(
                      child:   Text("Done",
                              style: const TextStyle(
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Montserrat",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16.0),
                              textAlign: TextAlign.left),
                  ),
                ),
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
