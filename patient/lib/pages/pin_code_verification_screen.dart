import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:doctor_app/pages/home.dart';
import 'package:doctor_app/widget/rounded_button_login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeVerificationScreen extends StatefulWidget {
  static const routeName = 'otp-screen';

  @override
  _PinCodeVerificationScreenState createState() =>
      _PinCodeVerificationScreenState();
}

class _PinCodeVerificationScreenState extends State<PinCodeVerificationScreen>
    with TickerProviderStateMixin {
  var onTapRecognizer;

  TextEditingController textEditingController = TextEditingController();

  // ..text = "123456";

  StreamController<ErrorAnimationType> errorController;

  bool hasError = false;
  String currentText = "";
  final GlobalKey<State> _keyLoader = new GlobalKey<State>();
  final GlobalKey<State> _loadingDialog = new GlobalKey<State>();
  final formKey = GlobalKey<FormState>();
  AnimationController animationController;

  String getPhone;

  @override
  void initState() {
    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pop(context);
      };
    errorController = StreamController<ErrorAnimationType>();
    animationController =
        AnimationController(duration: new Duration(seconds: 1), vsync: this);
    animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    errorController.close();
    animationController.dispose();
    super.dispose();
  }

  // Auth _auth = new Auth();
//  String phoneNumber  = '';
  int typeScreen;

  @override
  Widget build(BuildContext context) {
    typeScreen = ModalRoute.of(context).settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        title: // OTP Verification
            Opacity(
          opacity: 0.6,
          child: Text('code Verification',
              style: const TextStyle(
                  color: const Color(0xff26c165),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 12.0),
              textAlign: TextAlign.left),
        ),
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 36,
                right: 36,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('please enter code Verification',
                      style: const TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontSize: 24.0),
                      textAlign: TextAlign.left),
                  // Code sent to +249 9616 68 666 this code will expire in 50 Sec
                  Opacity(
                    opacity: 0.699999988079071,
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          style: const TextStyle(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontSize: 12.0),
                          text: 'code sent to your phone'),
                      TextSpan(
                        style: const TextStyle(
                            color: const Color(0xffff3030),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            fontStyle: FontStyle.normal,
                            fontSize: 12.0),
                        text: '50 seconds',
                      ),
                    ])),
                  ),
                ],
              ),
            ),
//              Padding(
//                padding:
//                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
//                child: RichText(
//                  text: TextSpan(
//                      text: 'enter_code_sent_to',
//                      children: [
//                        TextSpan(
//                            text: widget.phoneNumber,
//                            style: TextStyle(
//                                color: Colors.black,
//                                fontWeight: FontWeight.bold,
//                                fontSize: 15)),
//                      ],
//                      style: TextStyle(color: Colors.black54, fontSize: 15)),
//                  textAlign: TextAlign.center,
//                ),
//              ),
            SizedBox(
              height: 20,
            ),
            Form(
              key: formKey,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0.0, horizontal: 45),
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Colors.green.shade600,
                        fontWeight: FontWeight.bold,
                      ),
                      length: 4,
                      obscureText: false,
                      obscuringCharacter: '*',
                      animationType: AnimationType.fade,
                      validator: (v) {
                        if (v.length < 4) {
                          return 'valid_code';
                        } else {
                          return null;
                        }
                      },
                      pinTheme: PinTheme(
                        borderWidth: 0,
                        inactiveColor: Colors.grey,
                        activeColor: Colors.grey,
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 50,
                        selectedFillColor: Colors.grey.shade300,
                        inactiveFillColor: Colors.grey.shade300,
                        activeFillColor:
                            hasError ? Colors.orange.shade200 : Colors.white,
                      ),
//                      cursorColor: Colors.black,
                      animationDuration: Duration(milliseconds: 300),
                      textStyle: TextStyle(fontSize: 20, height: 1.6),
                      enableActiveFill: true,
                      errorAnimationController: errorController,
                      controller: textEditingController,
                      keyboardType: TextInputType.phone,
                      // number
                      inputFormatters: [
                        // delete this if you want
                        WhitelistingTextInputFormatter.digitsOnly
                      ],
//                      boxShadows: [
//                        BoxShadow(
//                          offset: Offset(0, 1),
//                          color: Colors.black12,
//                          blurRadius: 10,
//                        )
//                      ],
                      onCompleted: (v) {
                        print("Completed");
                      },
                      // onTap: () {
                      //   print("Pressed");
                      // },
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                hasError ? 'fill code' : "",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            // Rsend OTP
            GestureDetector(
              onTap: () {},
              child: Text('resend otp',
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontSize: 16.0),
                  textAlign: TextAlign.center),
            ),
            SizedBox(
              height: 8,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: RoundedButtonLogin(
                text: 'Verfiy',
                press: () {
                  Navigator.pushNamed(context, MyHomePage.routeName);
                },
              ),
            ),

//              TimerButton(
//                label: "Send OTP Again",
//                timeOutInSeconds: 20,
//                onPressed: () {},
//                disabledColor: Colors.red,
//                color: Colors.deepPurple,
//                disabledTextStyle: new TextStyle(fontSize: 20.0),
//                activeTextStyle: new TextStyle(fontSize: 20.0, color: Colors.white),
//              ),
//              TimerButton(
//                label: "Try Again",
//                timeOutInSeconds: 10,
//                onPressed: () {},
//                buttonType: ButtonType.OutlineButton,
//              ),
//              TimerButton(
//                label: "CLOSE",
//                timeOutInSeconds: 5,
//                onPressed: () {},
//                buttonType: ButtonType.FlatButton,
//                disabledColor: Colors.deepOrange,
//                color: Colors.green,
//              ),
            Visibility(
              visible: false,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text('clear'),
                    onPressed: () {
                      textEditingController.clear();
                    },
                  ),
                  FlatButton(
                    child: Text("Set Text"),
                    onPressed: () {
                      textEditingController.text = "1234";
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
