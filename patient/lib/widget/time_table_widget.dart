import 'package:flutter/material.dart';

class TimeTableWidget extends StatelessWidget {

  final String day ;
  final String week ;
  final bool isSelected  ;


  TimeTableWidget ( { this.day , this.week, this.isSelected });

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        width: 50,
        height: 62,
        decoration: BoxDecoration(
          color:  isSelected ?  Colors.white :  Color(0xff7172f8),
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border.all(color: isSelected ?  Color(0xff9b9a9a) :  Color(0xff7172f8), width: 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tue
            Text(week,
                style:  TextStyle(
                    color:  isSelected ?  Color(0xff7172f8):   Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Montserrat",
                    fontStyle: FontStyle.normal,
                    fontSize: 14.0),
                textAlign: TextAlign.left),
            // 12
            Text(day,
                style:  TextStyle(
                    color:  isSelected ?  Color(0xff7172f8):   Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Montserrat",
                    fontStyle: FontStyle.normal,
                    fontSize: 14.0),
                textAlign: TextAlign.left)
          ],
        ),
      ),
    );
  }
}
