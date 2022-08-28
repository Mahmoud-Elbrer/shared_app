import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HyperlinkedLabelSwitch extends StatelessWidget {
  final String label;
  final bool selected;
  final Function onChange;
  final EdgeInsets padding;

  const HyperlinkedLabelSwitch({
    Key key,
    this.label,
    this.selected,
    this.onChange,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        //1. First widget in row is for label
        //Expanded widget claims the empty area
        Expanded(
          child: RichText(
              text: TextSpan(
                  text: label,
                  style: const TextStyle(
                      color: const Color(0xff71757a),
                      fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat",
                      fontStyle: FontStyle.normal,
                      fontSize: 14.0),

                  //TapGestureRecognizer helps to disambiguate gestures from other potential gestures
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
//                        //open hyperlink in webview
//                        Navigator.pushNamed(context, WEBVIEW,
//                            arguments:
//                            WebViewArguments(title: label, url: hyperlink));
                    })),
        ),

        //2. Next comes the switch to save the user's selection
        Switch(
          value: selected,
          onChanged: (bool v) {
            onChange(v);
          },
        )
      ],
    );
  }
}
