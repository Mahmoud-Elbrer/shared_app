import 'package:doctor_app/pages/all_patient_screen.dart';
import 'package:doctor_app/pages/appointment_done_screen.dart';
import 'package:doctor_app/pages/confirm_map_screen.dart';
import 'package:doctor_app/pages/doctor_detile_screen.dart';
import 'package:doctor_app/pages/doctor_profile_book_appointment_screen.dart';
import 'package:doctor_app/pages/home.dart';
import 'package:doctor_app/pages/login.dart';
import 'package:doctor_app/pages/my_appointment_screen.dart';
import 'package:doctor_app/pages/patient_review_request_screen.dart';
import 'package:doctor_app/pages/pin_code_verification_screen.dart';
import 'package:doctor_app/pages/select_blood_group_screen.dart';
import 'package:doctor_app/pages/select_bronze_screen.dart';
import 'package:doctor_app/pages/setting_screen.dart';
import 'package:doctor_app/pages/sign_up_screen.dart';
import 'package:doctor_app/pages/sign_up_setup2_screen.dart';
import 'package:flutter/material.dart';


var routeGenerator = <String, WidgetBuilder>{
  LoginScreen.routeName : (context) => LoginScreen(),
  SignUpScreen.routeName : (context) => SignUpScreen(),
  SignUpSetup2Screen.routeName : (context) => SignUpSetup2Screen(),
  AllPatientScreen.routeName : (context) => AllPatientScreen(),
  MyHomePage.routeName : (context) => MyHomePage(),
  AppointmentDoneScreen.routeName : (context) => AppointmentDoneScreen(),
  MyAppointmentScreen.routeName : (context) => MyAppointmentScreen(),
  DoctorDetailScreen.routeName : (context) => DoctorDetailScreen(),
  DoctorProfileBookAppointmentScreen.routeName : (context) => DoctorProfileBookAppointmentScreen(),
  SelectBloodGroupScreen.routeName : (context) => SelectBloodGroupScreen(),
  PinCodeVerificationScreen.routeName : (context) => PinCodeVerificationScreen(),
  PatientReviewRequestScreen.routeName : (context) => PatientReviewRequestScreen(),
  SettingScreen.routeName : (context) => SettingScreen(),
  SelectBronzeScreen.routeName : (context) => SelectBronzeScreen(),
  ConfirmMapScreen.routeName : (context) => ConfirmMapScreen(),
};