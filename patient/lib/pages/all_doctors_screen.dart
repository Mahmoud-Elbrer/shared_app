import 'package:doctor_app/widget/custom_search_textfield.dart';
import 'package:doctor_app/widget/doctor_card_home.dart';
import 'package:flutter/material.dart';

class AllDoctorScreen extends StatelessWidget {

  static const routeName = 'login-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,elevation:   0 ,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomSearchField(
                text: 'Search a doctor',
              ),
              SizedBox(height: 20,) ,
              Column(
                children: [
                  DoctorCardHome(),
                  DoctorCardHome(),
                  DoctorCardHome(),
                  DoctorCardHome(),
                  DoctorCardHome(),
                  DoctorCardHome(),
                  DoctorCardHome(),
                  DoctorCardHome(),
                  DoctorCardHome(),
                  DoctorCardHome(),
                  DoctorCardHome(),
                  DoctorCardHome(),
                  DoctorCardHome(),
                  DoctorCardHome(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
