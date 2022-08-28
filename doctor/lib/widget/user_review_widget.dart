import 'package:flutter/material.dart';

class UserReviewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Ellipse 10
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.grey.shade200),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Mohammed almaye",
                    style: const TextStyle(
                        color: const Color(0xff6669ec),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat",
                        fontStyle: FontStyle.normal,
                        fontSize: 16.0),
                    textAlign: TextAlign.left),
                SizedBox(
                  height: 6,
                ),
                // very good doctor
                Text("very good doctor",
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
          Row(
            children: [
              Icon(
                Icons.star,
                color: const Color(0xffffef62),
                size: 12,
              ),
              Icon(
                Icons.star,
                color: const Color(0xffffef62),
                size: 12,
              ),
              Icon(
                Icons.star,
                color: const Color(0xffffef62),
                size: 12,
              ),
              Icon(
                Icons.star,
                color: const Color(0xffffef62),
                size: 12,
              ),
              Icon(
                Icons.star,
                color: const Color(0xffffef62),
                size: 12,
              )
            ],
          )
        ],
      ),
    );
  }
}
