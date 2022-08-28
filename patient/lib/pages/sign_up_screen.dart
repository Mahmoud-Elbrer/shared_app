import 'package:doctor_app/pages/home.dart';
import 'package:doctor_app/pages/pin_code_verification_screen.dart';
import 'package:doctor_app/pages/select_blood_group_screen.dart';
import 'package:doctor_app/utitlts/toast.dart';
import 'package:doctor_app/widget/custom_email_textfield.dart';
import 'package:doctor_app/widget/custom_phone_textfield.dart';
import 'package:doctor_app/widget/custom_text_textfield.dart';
import 'package:doctor_app/widget/rounded_button_login.dart';
import 'package:doctor_app/widget/rounded_password_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatefulWidget {

  static const routeName = 'signup-screen';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

bool _obscurePasswordTextFiled = true;

enum CategoryType {
  BillInquiryE15,
  PaymentE15,
}

String typeBlood ;

class _SignUpScreenState extends State<SignUpScreen> {
  CategoryType categoryType = CategoryType.BillInquiryE15;

  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController;
  TextEditingController _emailController;
  TextEditingController _phoneController;
  TextEditingController _passwordController;
  TextEditingController _confirmPasswordController;
  String name, email, phone, password, confirmPassword;

  final _nameFocusNode = FocusNode();
  final _emailFocusNode = FocusNode();
  final _phoneFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _confirmPasswordFocusNode = FocusNode();

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
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    // TODO: implement dispose
    // dispose FocusNode
    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _phoneFocusNode.dispose();
    _passwordFocusNode.dispose();
    _confirmPasswordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    typeBlood = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
//                SizedBox(
//                  height: size.height * .05,
//                ),
                SizedBox(
                  height: 20,
                ),
                Text("Let’s Get Started",
                    style: const TextStyle(
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Sanchez",
                        fontStyle: FontStyle.normal,
                        fontSize: 24.0),
                    textAlign: TextAlign.left),
                // All your information and personal data is secured
                SizedBox(
                  height: 19,
                ),
                Text("All your information and personal data is secured",
                    style: const TextStyle(
                        color: const Color(0xff9e9e9e),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Sanchez",
                        fontStyle: FontStyle.normal,
                        fontSize: 14.0),
                    textAlign: TextAlign.left),
                SizedBox(
                  height: 20,
                ),

                CustomTextFieldField(
                  text: 'Name',
                  controller: _nameController,
                  focusOnFieldSubmitted: _emailFocusNode,
                ),
                SizedBox(
                  height: 17,
                ),
                CustomEmailTextField(
                  text: 'email@gmail.com',
                  focusNode: _emailFocusNode,
                  controller: _emailController,
                  focusOnFieldSubmitted: _phoneFocusNode,
                ),
                SizedBox(
                  height: 17,
                ),

                CustomPhoneField(
                  text: 'Phone',
                  controller: _phoneController,
                  focusNode: _phoneFocusNode,
                  focusOnFieldSubmitted: _passwordFocusNode,
                ),
                SizedBox(
                  height: 17,
                ),
                CustomPasswordTextField(
                  focusNode: _passwordFocusNode,
                  focusOnFieldSubmitted: _confirmPasswordFocusNode,
                  text: 'Password',
                  controller: _passwordController,
                  press: () {
                    _togglePasswordTextFiled();
                  },
                ),
                SizedBox(
                  height: 17,
                ),
                CustomPasswordTextField(
                  focusNode: _confirmPasswordFocusNode,
                  text: 'Confirm Password',
                  controller: _confirmPasswordController,
                  press: () {
                    _togglePasswordTextFiled();
                  },
                ),
                SizedBox(
                  height: 17,
                ),
                getCategoryUI(),
                SizedBox(
                  height: 17,
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, SelectBloodGroupScreen.routeName);
                  },
                  child: Row(
                    children: [
                      Container(
                        child: Text(typeBlood == null ? "Select Blood Group"  : "Your Select Blood Group is " +  typeBlood,
                            style: const TextStyle(
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w600,
                                fontFamily: "Montserrat",
                                fontStyle: FontStyle.normal,
                                fontSize: 16.0),
                            textAlign: TextAlign.left),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 5,
                ),
                RoundedButtonLogin(
                  text: 'SIGN IN',
                  press: () {
                    if (_formKey.currentState.validate()) {
                      name = _nameController.text;
                      phone = _phoneController.text;
                      phone = _phoneController.text;
                      password = _passwordController.text;
                      confirmPassword = _confirmPasswordController.text;

                      if (password != confirmPassword) {
                        failToast(context,
                            "confirmation password it not match password");
                      } else {
                        print("i am");
                        Navigator.pushNamed(context, PinCodeVerificationScreen.routeName);

                      }
                    } else {
                      ////print("validate ok");
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getCategoryUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              getButtonUI(
                CategoryType.BillInquiryE15,
                categoryType == CategoryType.BillInquiryE15,
              ),
              SizedBox(
                width: 5,
              ),
              getButtonUI(
                CategoryType.PaymentE15,
                categoryType == CategoryType.PaymentE15,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 6,
        ),
      ],
    );
  }

  Widget getButtonUI(CategoryType categoryTypeData, bool isSelected) {
    String txt = '';
    String urlImage = "";
    if (CategoryType.BillInquiryE15 == categoryTypeData) {
      txt = 'Male';
      urlImage = 'assets/icons/gender_male.svg';
    } else if (CategoryType.PaymentE15 == categoryTypeData) {
      txt = 'Female';
      urlImage = 'assets/icons/gender_female.svg';
    }
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(30.0)),
            border: Border.all(color: Colors.grey.shade100)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.white24,
            borderRadius: const BorderRadius.all(Radius.circular(30.0)),
            onTap: () {
              setState(() {
                categoryType = categoryTypeData;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 12, bottom: 12, left: 18, right: 18),
              child: Container(
                width: 106,
                height: 35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      urlImage,
                      color: isSelected
                          ? const Color(0xff7abafd)
                          : const Color(0xffbdbdbd),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      txt,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "Sanchez",
                        fontStyle: FontStyle.normal,
                        fontSize: 15.0,
                        color: isSelected
                            ? const Color(0xff7abafd)
                            : const Color(0xffbdbdbd),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
