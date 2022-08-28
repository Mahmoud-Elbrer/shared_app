import 'package:doctor_app/pages/all_doctors_screen.dart';
import 'package:doctor_app/pages/appointment_done_screen.dart';
import 'package:doctor_app/pages/doctor_detile_screen.dart';
import 'package:doctor_app/pages/doctor_profile_book_appointment_screen.dart';
import 'package:doctor_app/pages/home.dart';
import 'package:doctor_app/pages/login.dart';
import 'package:doctor_app/pages/my_appointment_screen.dart';
import 'package:doctor_app/pages/pin_code_verification_screen.dart';
import 'package:doctor_app/pages/select_blood_group_screen.dart';
import 'package:doctor_app/pages/sign_up_screen.dart';
import 'package:flutter/material.dart';


var routeGenerator = <String, WidgetBuilder>{
  LoginScreen.routeName : (context) => LoginScreen(),
  SignUpScreen.routeName : (context) => SignUpScreen(),
  AllDoctorScreen.routeName : (context) => AllDoctorScreen(),
  MyHomePage.routeName : (context) => MyHomePage(),
  AppointmentDoneScreen.routeName : (context) => AppointmentDoneScreen(),
  MyAppointmentScreen.routeName : (context) => MyAppointmentScreen(),
  DoctorDetailScreen.routeName : (context) => DoctorDetailScreen(),
  DoctorProfileBookAppointmentScreen.routeName : (context) => DoctorProfileBookAppointmentScreen(),
  SelectBloodGroupScreen.routeName : (context) => SelectBloodGroupScreen(),
  PinCodeVerificationScreen.routeName : (context) => PinCodeVerificationScreen(),
};