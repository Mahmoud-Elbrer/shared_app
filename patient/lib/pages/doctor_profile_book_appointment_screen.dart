import 'package:doctor_app/pages/appointment_done_screen.dart';
import 'package:doctor_app/widget/custom_text_comment_textfield.dart';
import 'package:doctor_app/widget/header_doctor_profile.dart';
import 'package:doctor_app/widget/time_table_widget.dart';
import 'package:flutter/material.dart';

class DoctorProfileBookAppointmentScreen extends StatefulWidget {
  static const routeName = 'doctor-profile-book-appointment-screen';

  @override
  _DoctorProfileBookAppointmentScreenState createState() =>
      _DoctorProfileBookAppointmentScreenState();
}

class _DoctorProfileBookAppointmentScreenState
    extends State<DoctorProfileBookAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff6365fe),
        elevation: 0,
      ),
      body: Container(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // doctor_profile_about
                HeaderDoctorProfile(),
                SizedBox(
                  height: 10,
                ),

                // Schedule
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Schedule",
                          style: const TextStyle(
                              color: const Color(0xff534f4f),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Montserrat",
                              fontStyle: FontStyle.normal,
                              fontSize: 16.0),
                          textAlign: TextAlign.left),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          // Rectangle 24
                          TimeTableWidget(
                            day: "12",
                            week: 'Tue',
                            isSelected: true,
                          ),
                          TimeTableWidget(
                            day: "15",
                            week: 'Fri',
                            isSelected: false,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text("Select Time",
                          style: const TextStyle(
                              color: const Color(0xff534f4f),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Montserrat",
                              fontStyle: FontStyle.normal,
                              fontSize: 16.0),
                          textAlign: TextAlign.left),
                      SizedBox(
                        height: 56,
                      ),




                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Select Time",
                              style: const TextStyle(
                                  color: const Color(0xff534f4f),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Montserrat",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16.0),
                              textAlign: TextAlign.left),

                          // 3,000 sdg
                          Text(
                              "3,000 sdg",
                              style: const TextStyle(
                                  color:  const Color(0xff7172f8),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Montserrat",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 16.0
                              ),
                              textAlign: TextAlign.left
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),

                      CustomCommentTextField(text: 'write your issue..... required',),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, AppointmentDoneScreen.routeName) ;
                  },
                  child: Container(
                    width: 326,
                    height: 57,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xff6a6bfe),
                              offset: Offset(0, 10),
                              blurRadius: 40,
                              spreadRadius: 0)
                        ],
                        color: const Color(0xff6a6bfe)),
                    child: Center(
                      child: // Book An Appointment
                          Text("Book An Appointment",
                              style: const TextStyle(
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Montserrat",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16.0),
                              textAlign: TextAlign.left),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
