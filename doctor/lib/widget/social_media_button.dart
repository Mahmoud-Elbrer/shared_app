import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaButton extends StatelessWidget {
  final String text;

  final String urlImage;

  final Color color;

  SocialMediaButton(
      {@required this.text, @required this.urlImage, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 122,
      height: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)), color: color),
      child: // Google
          Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/google.svg',
          ),
          SizedBox(
            width: 5,
          ),
          Text("Google",
              style: const TextStyle(
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Sanchez",
                  fontStyle: FontStyle.normal,
                  fontSize: 15.0),
              textAlign: TextAlign.left),
        ],
      ),
    );
  }
}
