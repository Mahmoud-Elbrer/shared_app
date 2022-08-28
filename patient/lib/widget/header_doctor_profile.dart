import 'package:flutter/material.dart';

class HeaderDoctorProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 200,
      color: const Color(0xff6365fe),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 88,
                height: 88,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: const Color(0xffffffff), width: 1))),
            SizedBox(
              width: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dr. Mohammed Ali",
                    style: const TextStyle(
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat",
                        fontStyle: FontStyle.normal,
                        fontSize: 16.0),
                    textAlign: TextAlign.left),
                // Heart Surgeon
                SizedBox(
                  height: 4,
                ),
                Text("Heart Surgeon",
                    style: const TextStyle(
                        color: const Color(0xffe4e4ef),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat",
                        fontStyle: FontStyle.normal,
                        fontSize: 14.0),
                    textAlign: TextAlign.left),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: const Color(0xffffef62),
                      size: 14,
                    ),
                    // 4.8
                    SizedBox(
                      width: 2,
                    ),
                    Text("4.8",
                        style: const TextStyle(
                            color: const Color(0xffd6d6d6),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Montserrat",
                            fontStyle: FontStyle.normal,
                            fontSize: 10.0),
                        textAlign: TextAlign.left),
                    // (4.3k reviews)
                    SizedBox(
                      width: 4,
                    ),
                    Text("(4.3k reviews)",
                        style: const TextStyle(
                            color: const Color(0xffd6d6d6),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Montserrat",
                            fontStyle: FontStyle.normal,
                            fontSize: 10.0),
                        textAlign: TextAlign.left)
                  ],
                ),

                SizedBox(
                  height: 35,
                ),

                // chat
                Container(
                  width: 142,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.circular(20)),
                      border: Border.all(
                          color: const Color(0xffffffff),
                          width: 0.800000011920929)),
                  child: Center(
                    child: // Chat with doctor
                    Text("Chat with doctor",
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Sanchez",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0),
                        textAlign: TextAlign.left),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
