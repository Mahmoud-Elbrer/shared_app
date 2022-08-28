import 'package:doctor_app/pages/doctor_detile_screen.dart';
import 'package:flutter/material.dart';

class DoctorCardHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10 ),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, DoctorDetailScreen.routeName) ;
        },
        child: Container(
          width: double.infinity,
          height: 92,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: const Color(0xffdddddd), width: 1),
              color: const Color(0xfffefeff)),
          child: Row(
            children: [
              // Rectangle 10
              Container(
                  width: 64.794921875,
                  height: 64,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey)),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Dr. Saad Ebrahim
                  Text("Dr. Saad Ebrahim",
                      style: const TextStyle(
                          color: const Color(0xff161616),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Sanchez",
                          fontStyle: FontStyle.normal,
                          fontSize: 18.0),
                      textAlign: TextAlign.left),
                  // Heart Surgeon
                  Text("Heart Surgeon",
                      style: const TextStyle(
                          color: const Color(0xff989ea7),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 12.0),
                      textAlign: TextAlign.left),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: const Color(0xffffef62),
                      ),
                      // 4.8
                      Text("4.8",
                          style: const TextStyle(
                              color: const Color(0xff989ea7),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Montserrat",
                              fontStyle: FontStyle.normal,
                              fontSize: 12.0),
                          textAlign: TextAlign.left) ,

                      SizedBox(width: 29,),
                      // 9:00 am to 4:00 pm
                      Text(
                          "9:00 am to 4:00 pm",
                          style: const TextStyle(
                              color:  const Color(0xffa5aab2),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Montserrat",
                              fontStyle:  FontStyle.normal,
                              fontSize: 12.0
                          ),
                          textAlign: TextAlign.left
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
