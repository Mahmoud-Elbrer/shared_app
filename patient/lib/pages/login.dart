import 'package:doctor_app/pages/home.dart';
import 'package:doctor_app/pages/sign_up_screen.dart';
import 'package:doctor_app/widget/custom_email_textfield.dart';
import 'package:doctor_app/widget/custom_phone_textfield.dart';
import 'package:doctor_app/widget/rounded_button_login.dart';
import 'package:doctor_app/widget/rounded_password_textfield.dart';
import 'package:doctor_app/widget/social_media_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {

  static const routeName = 'login-screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

bool _obscurePasswordTextFiled = true;

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController;
  TextEditingController _passwordController;
  String password, phoneNumber;
  final _phoneNumberFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  // Toggles the password show status
  void _togglePasswordTextFiled() {
    setState(() {
      _obscurePasswordTextFiled = !_obscurePasswordTextFiled;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    // TODO: implement dispose
    // dispose FocusNode
    _phoneNumberFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * .05,
                ),
                SizedBox(height: 15),
                SvgPicture.asset(
                  'assets/images/welcome_img.svg',
                ),
// Welcome
                SizedBox(
                  height: 17,
                ),
                Text("Welcome",
                    style: const TextStyle(
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Sanchez",
                        fontStyle: FontStyle.normal,
                        fontSize: 24.0),
                    textAlign: TextAlign.left),
                SizedBox(
                  height: 17,
                ),
                // Log in with your existant account
                Text("Log in with your existant account",
                    style: const TextStyle(
                        color: const Color(0xff9e9e9e),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Sanchez",
                        fontStyle: FontStyle.normal,
                        fontSize: 14.0),
                    textAlign: TextAlign.left),

                SizedBox(
                  height: 45,
                ),

                CustomPhoneField(
                  text: 'Phone',
                  controller: _emailController,
                  focusOnFieldSubmitted: _passwordFocusNode,
                ),
                SizedBox(
                  height: 17,
                ),
                CustomPasswordTextField(
                  focusNode: _passwordFocusNode,
                  text: 'Password',
                  controller: _passwordController,
                  press: () {
                    _togglePasswordTextFiled();
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                // Forgot Password?
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Forgot Password?",
                        style: const TextStyle(
                            color: const Color(0xff666666),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Sanchez",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.0),
                        textAlign: TextAlign.left),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                RoundedButtonLogin(
                  text: 'LOG IN',
                  press: () {
                    if (_formKey.currentState.validate()) {
                      phoneNumber = _emailController.text;
                      password = _passwordController.text ;



                      Navigator.pushNamed(context, MyHomePage.routeName);

//                      try {
//                        await _progressDialog.show();
//                        LoginModel loginModel = new LoginModel(
//                            userName: phoneNumber, password: password);
//                        var loginJsonModel = jsonEncode(loginModel);
//                        login(context, loginJsonModel);
//                      } catch (error) {
//                        ////print(error);
//                      }
                    } else {
                      ////print("validate ok");
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                // Or connect using
                Text("Or connect using",
                    style: const TextStyle(
                        color: const Color(0xffbdbdbd),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Sanchez",
                        fontStyle: FontStyle.normal,
                        fontSize: 15.0),
                    textAlign: TextAlign.left),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Rectangle 3

                    SocialMediaButton(
                      text: 'Google',
                      urlImage: 'assets/icons/google.svg',
                      color: const Color(0xfff14436),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SocialMediaButton(
                      text: 'Facebook',
                      urlImage: 'assets/icons/facebook.svg',
                      color: const Color(0xff375c8f),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, SignUpScreen.routeName);
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Dont have an account?
                        Text("Dont have an account?",
                            style: const TextStyle(
                                color: const Color(0xff404040),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Sanchez",
                                fontStyle: FontStyle.normal,
                                fontSize: 14.0),
                            textAlign: TextAlign.left),
                        SizedBox(
                          width: 5,
                        ),
                        // Sign Up
                        Text("Sign Up",
                            style: const TextStyle(
                                color: const Color(0xff0178fe),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Sanchez",
                                fontStyle: FontStyle.normal,
                                fontSize: 14.0),
                            textAlign: TextAlign.left)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
