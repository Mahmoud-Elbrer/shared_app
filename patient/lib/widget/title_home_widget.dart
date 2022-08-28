import 'package:doctor_app/pages/all_doctors_screen.dart';
import 'package:flutter/material.dart';

class TitleHomeWidget extends StatelessWidget {
  final String title ;
  final int index ;

  TitleHomeWidget ( {this.title , this.index });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Upcoming Appointment
        Text(this.title,
            style: const TextStyle(
                color: const Color(0xff626262),
                fontWeight: FontWeight.w700,
                fontFamily: "Montserrat",
                fontStyle: FontStyle.normal,
                fontSize: 15.0),
            textAlign: TextAlign.left),
        // SEE ALL
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, AllDoctorScreen.routeName);
          },
          child: Container(
            child: Text("SEE ALL",
                style: const TextStyle(
                    color: const Color(0xff6366ea),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Sanchez",
                    fontStyle: FontStyle.normal,
                    fontSize: 10.0),
                textAlign: TextAlign.left),
          ),
        )
      ],
    );
  }
}
