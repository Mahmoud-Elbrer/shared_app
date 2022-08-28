import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:doctor_app/pages/home_doctors_screen.dart';
import 'package:doctor_app/pages/login.dart';
import 'package:doctor_app/pages/messaging_screen.dart';
import 'package:doctor_app/pages/my_appointment_screen.dart';
import 'package:doctor_app/pages/profile.dart';
import 'package:doctor_app/pages/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';

class MyHomePage extends StatefulWidget {

  static const routeName = 'home-screen';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedPos = 0;

  double bottomNavBarHeight = 60;

  List<TabItem> tabItems = List.of([
    TabItem(Icons.home, "Home", Color(0xff6b6dee) , labelStyle: TextStyle(fontWeight: FontWeight.normal)),
    TabItem(Icons.calendar_today, "Appointments", Color(0xff6b6dee) , labelStyle: TextStyle(fontWeight: FontWeight.normal)),
    TabItem(Icons.message, "Messages", Color(0xff6b6dee) ),
    TabItem(Icons.person_outline, "Profile", Color(0xff6b6dee) ),
  ]);

  CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController = CircularBottomNavigationController(selectedPos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            child: Container(child: bodyContainer()),
            padding: EdgeInsets.only(bottom: bottomNavBarHeight),
          ),
          Align(alignment: Alignment.bottomCenter, child: bottomNav())
        ],
      ),
    );
  }

  Widget bodyContainer() {
    switch (selectedPos) {
      case 0:
        return HomeDoctorsScreen();
        break;
      case 1:
        return MyAppointmentScreen();
        break;
      case 2:
        return MessagingScreen();
        break;
      case 3:
        return ProfileScreen();
        break;
      default:
        return ProfileScreen();
        break;
    }
  }

  Widget bottomNav() {
    return CircularBottomNavigation(
      tabItems,
      iconsSize: 20,
      controller: _navigationController,
      selectedPos: selectedPos,
      barHeight: bottomNavBarHeight,
      barBackgroundColor: Colors.white,
      //backgroundBoxShadow: <BoxShadow>[BoxShadow(color: Colors.black45, blurRadius: 10.0),],
      animationDuration: Duration(milliseconds: 300),
      selectedCallback: (int selectedPos) {
        setState(() {
          this.selectedPos = selectedPos ?? 0;
          print(_navigationController.value);
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _navigationController.dispose();
  }
}
