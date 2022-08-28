import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpcomingAppointmentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: 285,
        height: 263,
        child: Column(
          children: [
            // Rectangle 32
            Container(
              width: 285,
              height: 83,
              decoration: BoxDecoration(color: const Color(0xff2a7bff)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10 ,right: 10 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Appointment Request
                    Text("Appointment Request",
                        style: const TextStyle(
                            color: const Color(0xff9ac1ff),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Montserrat",
                            fontStyle: FontStyle.normal,
                            fontSize: 11.0),
                        textAlign: TextAlign.left),
                    Row(
                      children: [
                        // appointment_date
                        SvgPicture.asset('assets/icons/clock.svg'),
                        SizedBox(
                          width: 10,
                        ),
                        Text("14 Apr 2022, 8am - 10am",
                            style: const TextStyle(
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w700,
                                fontFamily: "Montserrat",
                                fontStyle: FontStyle.normal,
                                fontSize: 14.0),
                            textAlign: TextAlign.left)
                      ],
                    )
                  ],
                ),
              ),
            ),

            // Rectangle 31
            Container(
              width: 285,
              height: 168,
              decoration: BoxDecoration(color: const Color(0xffffffff)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10 , right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        // user_profile_image
                        Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade400),
                        ),
                        // user_name
                        SizedBox(
                          width: 12,
                        ),
                        Text("Mohammed Almaye",
                            style: const TextStyle(
                                color: const Color(0xff2b344f),
                                fontWeight: FontWeight.w600,
                                fontFamily: "Montserrat",
                                fontStyle: FontStyle.normal,
                                fontSize: 14.0),
                            textAlign: TextAlign.left)
                      ],
                    ),
                    Row(
                      children: [
                        // Rectangle 33
                        Container(
                          width: 164,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: const Color(0xff256fff)),
                          child: Center(
                            child: // Accept
                                Text("Accept",
                                    style: const TextStyle(
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14.0),
                                    textAlign: TextAlign.left),
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        // Rectangle 34
                        Container(
                          width: 81,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: const Color(0xffe1e9fd)),
                          child: Center(
                            child: // Decline
                                Text("Decline",
                                    style: const TextStyle(
                                        color: const Color(0xff7686b6),
                                        fontWeight: FontWeight.w700,
                                        fontFamily: "Montserrat",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14.0),
                                    textAlign: TextAlign.left),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
