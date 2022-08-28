import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpcomingAppointmentsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Rectangle 28
          Container(
            width: 283,
            height: 437,
            decoration:
            BoxDecoration(color: const Color(0xff7376f4)),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // In 3 Days
                  Text("In 3 Days",
                      style: const TextStyle(
                          color: const Color(0xfff5f5f5),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 15.0),
                      textAlign: TextAlign.left),
                  SizedBox(
                    height: 32,
                  ),
                  // Consultation with Dr Amal Alhadi
                  Text("Consultation with Dr Amal Alhadi",
                      style: const TextStyle(
                          color: const Color(0xfffffefe),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0),
                      textAlign: TextAlign.left),
                  SizedBox(
                    height: 19,
                  ),
                  rowTime(
                    'April 14',
                    'assets/icons/schedule.svg',
                  ),
                  rowTime(
                    '1:00 PM',
                    'assets/icons/time.svg',
                  ),
                  rowTime(
                    'Alamarat,street 41',
                    'assets/icons/my_location.svg',
                  ),
                  rowTime(
                    '0905935177',
                    'assets/icons/call.svg',
                  ),

                  SizedBox(
                    height: 39,
                  ),
// Rectangle 29
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 156,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(5)),
                            border: Border.all(
                                color: const Color(0xffffffff),
                                width: 1)),
                        child: Center(
                          child: // Cancel
                          Text("Cancel",
                              style: const TextStyle(
                                  color:
                                  const Color(0xffffffff),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Montserrat",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20.0),
                              textAlign: TextAlign.left),
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/send.svg',
                      ),

                    ],
                  ) ,

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget rowTime(String title, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          SvgPicture.asset(
            imageUrl,
          ),
          SizedBox(
            width: 10,
          ),
          Text(title,
              style: const TextStyle(
                  color: const Color(0xffe9e9e9),
                  fontWeight: FontWeight.w600,
                  fontFamily: "Montserrat",
                  fontStyle: FontStyle.normal,
                  fontSize: 15.0),
              textAlign: TextAlign.left)
        ],
      ),
    );
  }
}
