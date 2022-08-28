import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile
                Text("Profile",
                    style: const TextStyle(
                        color: const Color(0xff3a3a3a),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat",
                        fontStyle: FontStyle.normal,
                        fontSize: 24.0),
                    textAlign: TextAlign.left),
                SizedBox(
                  height: 10,
                ),
                // Ellipse 11
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 88,
                        height: 88,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: const Color(0xffffffff), width: 1))),
                  ],
                ),

                SizedBox(
                  height: 40,
                ),
                title("Full Name", 'Mohammed Ali'),
                title("Email", 'spartenxj@gmail.com'),
                title("Number", '0999070097'),
                title("Gender", 'Male'),
                title("Gender", 'Male'),
                title("Date of brith", 'December 27, 1995'),
                title(
                    "Work Space / Hospital Location", 'Khartoum ,Azhary block 6'),
                title("About / bio",
                    'sudanies cardiac surgeon and entrepreneur. He is chairman and founder of Narayana Health, a chain of 21 medical centers in India. He has performed more than 15,000 heart operations. In 2004 he was awarded the Padma Shri'),


                SizedBox(height: 10,) ,
                // Rectangle 35
                Container(
                  width: double.infinity,
                  //height: 37,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: const Color(0xff256fff)),
                  child: Center(
                    child: // Update
                        Text("Update",
                            style: const TextStyle(
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w600,
                                fontFamily: "Montserrat",
                                fontStyle: FontStyle.normal,
                                fontSize: 14.0),
                            textAlign: TextAlign.left),
                  ),
                ) ,

                SizedBox(height: 10,) ,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget title(String title, String subTitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Full Name
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Text(title,
              style: const TextStyle(
                  color: const Color(0xff9198a1),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Montserrat",
                  fontStyle: FontStyle.normal,
                  fontSize: 16.0),
              textAlign: TextAlign.left),
        ),

        SizedBox(
          height: 10,
        ),
        // Rectangle 38
        Container(
          width: 328,
          height: 37,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: const Color(0xffededed), width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                // Mohammed Ali
                Text(subTitle,
                    style: const TextStyle(
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat",
                        fontStyle: FontStyle.normal,
                        fontSize: 16.0),
                    textAlign: TextAlign.left)
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
