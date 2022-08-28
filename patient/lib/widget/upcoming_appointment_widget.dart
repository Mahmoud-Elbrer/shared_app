import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpcomingAppointmentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: 255,
        height: 135,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            gradient: LinearGradient(
                begin: Alignment(0.02631583996117115, 0),
                end: Alignment(1, 0.9999998807907104),
                colors: [const Color(0xff7c7ff9), const Color(0xff585be3)])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // doc_image
                  Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey)),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Dr. Hiba Abdalrhman
                        Text("Dr. Hiba Abdalrhman",
                            style: const TextStyle(
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Sanchez",
                                fontStyle: FontStyle.normal,
                                fontSize: 17.0),
                            textAlign: TextAlign.left),
                        // Heart Surgen
                        Text("Heart Surgen",
                            style: const TextStyle(
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w300,
                                fontFamily: "Montserrat",
                                fontStyle: FontStyle.normal,
                                fontSize: 12.0),
                            textAlign: TextAlign.left)
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icons/location.svg',
                  ),
                ],
              ),
            ),
// Rectangle 8
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                width: double.infinity,
                height: 51,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: const Color(0xff518dff)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Sun - May 10, 1:00pm - 2:00pm
                    SvgPicture.asset(
                      'assets/images/schedule.svg',
                    ),

                    SizedBox(
                      width: 18,
                    ),
                    Text("Sun - May 10, 1:00pm - 2:00pm",
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Sanchez",
                            fontStyle: FontStyle.normal,
                            fontSize: 10.0),
                        textAlign: TextAlign.left)
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
