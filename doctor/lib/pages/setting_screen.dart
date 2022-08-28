import 'package:doctor_app/widget/switch_setting.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  static const routeName = 'setting-screen';

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool monVal = false;
  bool tuVal = false;

  bool accepted1 = false;
  bool accepted2 = false;

  Widget checkbox(String title, bool boolValue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // 30 mintus
        Text(title,
            style: const TextStyle(
                color: const Color(0xff2f2f2f),
                fontWeight: FontWeight.w700,
                fontFamily: "Montserrat",
                fontStyle: FontStyle.normal,
                fontSize: 14.0),
            textAlign: TextAlign.left),
        Checkbox(
          value: boolValue,
          onChanged: (bool value) {
            setState(() {
              switch (title) {
                case "30 mintus":
                  monVal = value;
                  break;
                case "1 hour":
                  tuVal = value;
                  break;
              }
            });
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Settings
              SizedBox(
                height: size.height * .05,
              ),
              Text("Settings",
                  style: const TextStyle(
                      color: const Color(0xff3a3a3a),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat",
                      fontStyle: FontStyle.normal,
                      fontSize: 24.0),
                  textAlign: TextAlign.left),

              SizedBox(
                height: 30,
              ),
              // Working hours
              Row(
                children: [
                  Text("Working hours",
                      style: const TextStyle(
                          color: const Color(0xff71757a),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 12.0),
                      textAlign: TextAlign.left),
                ],
              ),

              Row(
                children: [],
              ),
              Row(
                children: [
                  // Appointment time
                  Expanded(
                    child: Text("Appointment time",
                        style: const TextStyle(
                            color: const Color(0xff71757a),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Montserrat",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0),
                        textAlign: TextAlign.left),
                  ),
                  Row(
                    children: [
                      checkbox("30 mintus", monVal),
                      checkbox("1 hour", tuVal),
                    ],
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Appointment fee
                  Text("Appointment fee",
                      style: const TextStyle(
                          color: const Color(0xff71757a),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 12.0),
                      textAlign: TextAlign.left),
                  // Rectangle 38
                  Container(
                    width: 104,
                    height: 37,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            color: const Color(0xffededed), width: 1)),
                    child: Center(
                      child: // 3000 sdg
                          Text("3000 sdg",
                              style: const TextStyle(
                                  color: const Color(0xff2f2f2f),
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Montserrat",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12.0),
                              textAlign: TextAlign.left),
                    ),
                  )
                ],
              ),

              HyperlinkedLabelSwitch(
                label: 'Auto accept appointment requests:',
                selected: accepted1,
                onChange: (bool v) {
                  setState(() {
                    accepted1 = v;
                  });
                },
              ),

              HyperlinkedLabelSwitch(
                label: 'Online (viewd by users)',
                selected: accepted2,
                onChange: (bool v) {
                  setState(() {
                    accepted2 = v;
                  });
                },
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Subscription- plane
                  Text("Subscription- plane",
                      style: const TextStyle(
                          color: const Color(0xff71757a),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0),
                      textAlign: TextAlign.left),

                  // Gold
                  Text("Gold",
                      style: const TextStyle(
                          color: const Color(0xff2f2f2f),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0),
                      textAlign: TextAlign.left)
                ],
              ),

SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Subscription- plane
                  Text("Subscription- status",
                      style: const TextStyle(
                          color: const Color(0xff71757a),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0),
                      textAlign: TextAlign.left),

                  // Gold
                  Text("Active",
                      style: const TextStyle(
                          color: const Color(0xff2f2f2f),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0),
                      textAlign: TextAlign.left)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
