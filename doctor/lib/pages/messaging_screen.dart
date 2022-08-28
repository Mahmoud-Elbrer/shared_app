import 'package:doctor_app/widget/messaging_widget.dart';
import 'package:doctor_app/widget/user_review_widget.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MessagingScreen extends StatefulWidget {
  static const routeName = 'messaging-screen';

  @override
  _MessagingScreenState createState() => _MessagingScreenState();
}

class _MessagingScreenState extends State<MessagingScreen> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                    labels: ['Messages', 'Reviews'],
                    onToggle: (index) {
                      setState(() {
                        selected = index;
                      });

                      print('switched to: $index');
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                selected == 0
                    ? Column(
                        children: [
// Ellipse 10
                          MessagingWidget(),
                          MessagingWidget(),
                          MessagingWidget(),
                          MessagingWidget(),
                          MessagingWidget(),
                        ],
                      )
                    : Column(
                        children: [
// Ellipse 10
                          UserReviewWidget(),
                          UserReviewWidget(),
                          UserReviewWidget(),
                          UserReviewWidget(),
                          UserReviewWidget(),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
