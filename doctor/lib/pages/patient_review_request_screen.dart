import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PatientReviewRequestScreen extends StatelessWidget {
  static const routeName = 'patient-review-request-screen';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: size.height * .04,
              ),
              // Rectangle 37
              Container(
                width: double.infinity,
                height: 309,
                decoration: BoxDecoration(color: const Color(0xff2f8eff)),
                child: Center(
                  child: // appointment_date
                      Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("14 Apr 2022, 8am - 10am",
                        style: const TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Montserrat",
                            fontStyle: FontStyle.normal,
                            fontSize: 32.0),
                        textAlign: TextAlign.left),
                  ),
                ),
              ),

              // user_profile_image
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.shade400,
                                  )),

                              SizedBox(
                                width: 10,
                              ),
// user_name
                              Text("Mohammed Almaye",
                                  style: const TextStyle(
                                      color: const Color(0xff2b344f),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Montserrat",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 24.0),
                                  textAlign: TextAlign.left),
                            ],
                          ),
                        ),
                        SvgPicture.asset('assets/icons/chat.svg' , width: 20, height: 20,),
                      ],
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    // user_name
                    Text("Comment",
                        style: const TextStyle(
                            color: const Color(0xff6b7bb1),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0),
                        textAlign: TextAlign.left),

                    SizedBox(
                      height: 9,
                    ),

                    // user_name
                    Text(
                        "Hello Dr. Mohammed Ali, i saw your reviews and im looking forward to our appointment. i have a lot of pain in my chest latly and i dont know why",
                        style: const TextStyle(
                            color: const Color(0xff444a5c),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0),
                        textAlign: TextAlign.left)
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
            ),
          )
        ],
      ),
    );
  }
}
