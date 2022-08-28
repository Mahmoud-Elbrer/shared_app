import 'package:doctor_app/pages/doctor_profile_book_appointment_screen.dart';
import 'package:doctor_app/widget/header_doctor_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toggle_switch/toggle_switch.dart';

class DoctorDetailScreen extends StatefulWidget {

  static const routeName = 'doctor-detail-screen';

  @override
  _DoctorDetailScreenState createState() => _DoctorDetailScreenState();
}

int selected = 0;

class _DoctorDetailScreenState extends State<DoctorDetailScreen> {
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
              children: [
                // doctor_profile_about
                HeaderDoctorProfile(),
                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: ToggleSwitch(
                          minWidth: double.infinity,
                          cornerRadius: 10.0,
                          activeBgColor: Color(0xff5b88f6),
                          activeFgColor: Colors.white,
                          inactiveBgColor: Colors.grey.shade200,
                          inactiveFgColor: Color(0xff5b88f6),
                          initialLabelIndex: selected,
                          labels: ['Profile', 'Contact Info', 'Reviews'],
                          onToggle: (index) {
                            setState(() {
                              selected = index;
                            });

                            print('switched to: $index');
                          },
                        ),
                      ),
                      getWidget(selected),

                      // Rectangle 22
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
                    Navigator.pushNamed(context, DoctorProfileBookAppointmentScreen.routeName) ;
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

  getWidget(int selected) {
    switch (selected) {
      case 0:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            profile('Specialyst', 'Cardiology, Heart Surgeon'),
            profile('Experience', '5 years at Ebrahim Malik hospital'),
            profile('Specialyst',
                'sudanies cardiac surgeon and entrepreneur. He is chairman and founder of Narayana Health, a chain of 21 medical centers in India. He has performed more than 15,000 heart operations. In 2004 he was awarded the Padma Shri'),
          ],
        );
        break;
      case 1:
        return contact();
        break;
      case 2:
        return review();
        break;
    }
  }

  Widget profile(String title, String subTitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(
              color: const Color(0xff534f4f),
              fontWeight: FontWeight.w700,
              fontFamily: "Montserrat",
              fontStyle: FontStyle.normal,
              fontSize: 16.0),
        ),
        // Cardiology, Heart Surgeon
        SizedBox(
          height: 8,
        ),
        Text(
          subTitle,
          style: const TextStyle(
              color: const Color(0xff656a73),
              fontWeight: FontWeight.w600,
              fontFamily: "Montserrat",
              fontStyle: FontStyle.normal,
              fontSize: 14.0),
        )
      ],
    );
  }

  Widget contact() {
    return Column(
      children: [
        // Contact info

        Text("Contact info",
            style: const TextStyle(
                color: const Color(0xff534f4f),
                fontWeight: FontWeight.w700,
                fontFamily: "Montserrat",
                fontStyle: FontStyle.normal,
                fontSize: 16.0),
            textAlign: TextAlign.left),

        SizedBox(
          height: 25,
        ),

        contactRowTitle("assets/icons/call_gery.svg", "0999070097"),
        contactRowTitle("assets/icons/sms.svg", "spartenxj@gmail.com"),
        contactRowTitle("assets/icons/send_gery.svg",
            "Kharthoum. Azhary, Block 9, Alsiadah Khadiga mosque"),
      ],
    );
  }

  Widget contactRowTitle(String urlImage, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          // 0999070097
          SvgPicture.asset(urlImage),
          SizedBox(
            width: 20,
          ),
          Text(title,
              style: const TextStyle(
                  color: const Color(0xff656a73),
                  fontWeight: FontWeight.w600,
                  fontFamily: "Montserrat",
                  fontStyle: FontStyle.normal,
                  fontSize: 14.0),
              textAlign: TextAlign.left)
        ],
      ),
    );
  }

  Widget review() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Ellipse 10
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.grey.shade200),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Mohammed almaye
                Text("Mohammed almaye",
                    style: const TextStyle(
                        color: const Color(0xff6669ec),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat",
                        fontStyle: FontStyle.normal,
                        fontSize: 16.0),
                    textAlign: TextAlign.left),
                SizedBox(
                  height: 6,
                ),
                // very good doctor
                Text("very good doctor",
                    style: const TextStyle(
                        color: const Color(0xff3e3e3f),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Montserrat",
                        fontStyle: FontStyle.normal,
                        fontSize: 13.0),
                    textAlign: TextAlign.left)
              ],
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: const Color(0xffffef62),
                size: 12,
              ),
              Icon(
                Icons.star,
                color: const Color(0xffffef62),
                size: 12,
              ),
              Icon(
                Icons.star,
                color: const Color(0xffffef62),
                size: 12,
              ),
              Icon(
                Icons.star,
                color: const Color(0xffffef62),
                size: 12,
              ),
              Icon(
                Icons.star,
                color: const Color(0xffffef62),
                size: 12,
              )
            ],
          )
        ],
      ),
    );
  }
}
