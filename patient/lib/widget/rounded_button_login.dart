import 'package:flutter/material.dart';

class RoundedButtonLogin extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor, backgroundColor;

  const RoundedButtonLogin({
    Key key,
    this.text,
    this.press,
    this.color = Colors.white,
    this.textColor = Colors.white,
    this.backgroundColor = const Color(0xff00c8d5),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 19),
      child: InkWell(
        onTap: press,
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 14),
            width: size.width * .4,
            // height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: const Color(0xff0148a4),
              boxShadow: [
                BoxShadow(
                    color: const Color(0x420148a4),
                    offset: Offset(0, 10),
                    blurRadius: 40,
                    spreadRadius: 0)
              ],
            ),
           // color: const Color(0xff0148a4),
            child: Center(
              child: // sign in
                  Text(
                text,
                    style: const TextStyle(
                        color:  const Color(0xffffffff),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Sanchez",
                        fontStyle:  FontStyle.normal,
                        fontSize: 16.0
                    ),
                    textAlign: TextAlign.left,

              ),
            ),
          ),
        ),
      ),
    );
  }
}
