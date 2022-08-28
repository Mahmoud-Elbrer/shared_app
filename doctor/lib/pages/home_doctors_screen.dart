import 'package:doctor_app/widget/custom_search_textfield.dart';
import 'package:doctor_app/widget/doctor_card_home.dart';
import 'package:doctor_app/widget/title_home_widget.dart';
import 'package:doctor_app/widget/upcoming_appointment_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeDoctorsScreen extends StatefulWidget {


  static const routeName = 'home-doctor-screen';

  @override
  _HomeDoctorsScreenState createState() => _HomeDoctorsScreenState();
}

class _HomeDoctorsScreenState extends State<HomeDoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Welcome back
              Text(
                  "Welcome back",
                  style: const TextStyle(
                      color:  const Color(0xff8694c0),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Montserrat",
                      fontStyle:  FontStyle.normal,
                      fontSize: 20.0
                  ),
                  textAlign: TextAlign.left
              ),
              SizedBox(
                height: 6,
              ),
              // Dr. Mohammed Ali
              Text(
                  "Dr. Mohammed Ali",
                  style: const TextStyle(
                      color:  const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat",
                      fontStyle:  FontStyle.normal,
                      fontSize: 24.0
                  ),
                  textAlign: TextAlign.left
              ),
              SizedBox(
                height: 22,
              ),
              TitleHomeWidget(
                title: 'Upcoming Appointment',
                index: 1,
              ),
              SizedBox(
                height: 18,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    UpcomingAppointmentWidget(),
                    UpcomingAppointmentWidget(),
                    UpcomingAppointmentWidget(),
                    UpcomingAppointmentWidget(),
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),
              TitleHomeWidget(
                title: 'Upcoming appointments',
                index: 2,
              ),
              SizedBox(
                height: 22,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    PatientCardHome(),
                    PatientCardHome(),
                    PatientCardHome(),
                    PatientCardHome(),
                    PatientCardHome(),
                    PatientCardHome(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
