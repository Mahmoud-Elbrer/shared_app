import 'package:flutter/material.dart';

class MessagingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey.shade500)),
            SizedBox(width: 10,) ,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Dr. Mohammed Ali
                  Text("Dr. Mohammed Ali",
                      style: const TextStyle(
                          color: const Color(0xff6669ec),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 16.0),
                      textAlign: TextAlign.left),
                  // good. make an appointment...
                  Text("good. make an appointment...",
                      style: const TextStyle(
                          color: const Color(0xff3e3e3f),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                      textAlign: TextAlign.left)
                ],
              ),
            ),

            // 10:00am
            Text("10:00am",
                style: const TextStyle(
                    color: const Color(0xff3e3e3f),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Montserrat",
                    fontStyle: FontStyle.normal,
                    fontSize: 13.0),
                textAlign: TextAlign.left)
          ],
        ),
      ),
    );
  }
}
