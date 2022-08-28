import 'package:doctor_app/pages/patient_review_request_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PatientCardHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10 ),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, PatientReviewRequestScreen.routeName) ;
        },
        child: Container(
          width: double.infinity,
          height: 76,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(38)),
              border: Border.all(color: const Color(0xffdddddd), width: 1),
              color: const Color(0xffffffff)),
          child: Row(
            children: [
              // Rectangle 10
              Container(
                  width: 46,
                  height: 47,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey)),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Dr. Saad Ebrahim
                    // Wade Warren
                    Text(
                        "Wade Warren",
                        style: const TextStyle(
                            color:  const Color(0xff000000),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Montserrat",
                            fontStyle:  FontStyle.normal,
                            fontSize: 14.0
                        ),
                        textAlign: TextAlign.left
                    ),
                    SizedBox(height: 4,),
                    // Heart Surgeon
                    // 15 Apr 2022, 8am - 10am
                    Text(
                        "15 Apr 2022, 8am - 10am",
                        style: const TextStyle(
                            color:  const Color(0xff7b8abd),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat",
                            fontStyle:  FontStyle.normal,
                            fontSize: 11.0
                        ),
                        textAlign: TextAlign.left
                    )
                  ],
                ),
              ) ,
              Padding(
                padding: const EdgeInsets.only(left: 10 , right: 10),
                child: SvgPicture.asset('assets/icons/more.svg'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
