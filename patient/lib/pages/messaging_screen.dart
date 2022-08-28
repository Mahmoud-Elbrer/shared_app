import 'package:doctor_app/widget/messaging_widget.dart';
import 'package:flutter/material.dart';

class MessagingScreen extends StatelessWidget {


  static const routeName = 'messaging-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your Messages",
                    style: const TextStyle(
                        color: const Color(0xff3a3a3a),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat",
                        fontStyle: FontStyle.normal,
                        fontSize: 24.0),
                    textAlign: TextAlign.left),

                SizedBox(height: 20,),
                Column(
                  children: [
// Ellipse 10
                    MessagingWidget() ,
                    MessagingWidget() ,
                    MessagingWidget() ,
                    MessagingWidget() ,
                    MessagingWidget() ,


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
