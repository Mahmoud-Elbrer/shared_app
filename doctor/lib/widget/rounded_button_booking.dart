import 'package:flutter/material.dart';

class RoundedButtonButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor, backgroundColor;

  const RoundedButtonButton({
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
           // color: const Color(0xff0148a4),
            child: Center(
              child: // sign in
                  Text(
                text,
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
    );
  }
}
