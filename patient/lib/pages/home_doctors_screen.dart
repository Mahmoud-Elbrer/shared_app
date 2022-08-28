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
      appBar: AppBar(
         backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomSearchField(
                text: 'Search a doctor',
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
                title: 'Near By Doctors',
                index: 1,
              ),
              SizedBox(
                height: 22,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    DoctorCardHome(),
                    DoctorCardHome(),
                    DoctorCardHome(),
                    DoctorCardHome(),
                    DoctorCardHome(),
                    DoctorCardHome(),
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
