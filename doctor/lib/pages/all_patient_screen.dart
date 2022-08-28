import 'package:doctor_app/widget/custom_search_textfield.dart';
import 'package:doctor_app/widget/doctor_card_home.dart';
import 'package:flutter/material.dart';

class AllPatientScreen extends StatelessWidget {

  static const routeName = 'all-patient-screen';

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
                text: 'Search a Patient',
              ),
              SizedBox(height: 20,) ,
              Column(
                children: [
                  PatientCardHome(),
                  PatientCardHome(),
                  PatientCardHome(),
                  PatientCardHome(),
                  PatientCardHome(),
                  PatientCardHome(),
                  PatientCardHome(),
                  PatientCardHome(),
                  PatientCardHome(),
                  PatientCardHome(),
                  PatientCardHome(),
                  PatientCardHome(),
                  PatientCardHome(),
                  PatientCardHome(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
