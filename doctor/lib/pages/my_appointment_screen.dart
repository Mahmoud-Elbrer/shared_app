import 'package:doctor_app/widget/upcoming_appointment_widget.dart';
import 'package:doctor_app/widget/upcoming_appointments_widget.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MyAppointmentScreen extends StatefulWidget {
  static const routeName = 'my-appointment-screen';

  @override
  _MyAppointmentScreenState createState() => _MyAppointmentScreenState();
}

int selected = 0;

class _MyAppointmentScreenState extends State<MyAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
           //   crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text("Your Appointments",
                        style: const TextStyle(
                            color: const Color(0xff3a3a3a),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Montserrat",
                            fontStyle: FontStyle.normal,
                            fontSize: 24.0),
                        textAlign: TextAlign.left),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: ToggleSwitch(
                    minWidth: double.infinity,
                    cornerRadius: 10.0,
                    activeBgColor: Color(0xff5b88f6),
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey.shade200,
                    inactiveFgColor: Color(0xff5b88f6),
                    initialLabelIndex: selected,
                    labels: ['Upcoming', 'Past'],
                    onToggle: (index) {
                      setState(() {
                        selected = index;
                      });

                      print('switched to: $index');
                    },
                  ),
                ),
                selected == 0
                    ? Container(
                        child: SingleChildScrollView(
                          child: Column(

                            children: [
                              UpcomingAppointmentWidget(),
                              UpcomingAppointmentWidget(),
                              UpcomingAppointmentWidget(),
                              UpcomingAppointmentWidget(),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              UpcomingAppointmentsWidget(),
                              UpcomingAppointmentsWidget(),
                              UpcomingAppointmentsWidget(),
                            ],
                          ),
                        ),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
