import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFieldField extends StatelessWidget {
  final String text;
  final Color color, textColor;
  final TextEditingController controller;
  final focusOnFieldSubmitted;
  final focusNode;

  const CustomTextFieldField({
    Key key,
    @required this.text,
    this.color = Colors.white,
    this.controller,
    this.textColor = Colors.white,
    this.focusOnFieldSubmitted,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SuperTooltip tooltip;
    return Theme(
      data: Theme.of(context).copyWith(splashColor: Colors.transparent),
      child: TextFormField(
        //  maxLength: 10,
        controller: controller,
        onFieldSubmitted: (_) {
          FocusScope.of(context).requestFocus(focusOnFieldSubmitted);
        },
        focusNode: focusNode,
        keyboardType: TextInputType.text,
        autofocus: false,
        style: const TextStyle(
            color: const Color(0xff1c2340),
            fontWeight: FontWeight.w400,
            // fontFamily: "Roboto",
            fontStyle: FontStyle.normal,
            fontSize: 16.0),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: const Color(0xff4ea3fd),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.grey.shade200,
              width: 2.0,
            ),
          ),
          prefixIcon: IconButton(
            icon: Icon(Icons.person_outline, color: const Color(0xff156aff)),
            onPressed: () {},
          ),
          border: InputBorder.none,
          filled: true,
          fillColor: const Color(0xfff3f3f3),
          hintText: text,
        ),
        validator: (String value) {
          if (value.isEmpty ) {
            return  'this field cannot be empty';
          } else {
            return null;
          }
        },
//        validator: (String value) {
//          if (value.isEmpty) {
//            return 'this_field_cannot_be_empty_phone';
//          } else if (!RegExp(r'(^(?:[+0]9)?[0-9]{10}$)').hasMatch(value)) {
//            return 'phone_number_correct_content';
//          } else {
//            return null;
//          }
//        },
      ),
    );
  }
}
