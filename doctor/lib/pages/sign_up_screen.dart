import 'package:doctor_app/pages/pin_code_verification_screen.dart';
import 'package:doctor_app/utitlts/toast.dart';
import 'package:doctor_app/widget/custom_email_textfield.dart';
import 'package:doctor_app/widget/custom_phone_textfield.dart';
import 'package:doctor_app/widget/custom_text_textfield.dart';
import 'package:doctor_app/widget/rounded_button_login.dart';
import 'package:doctor_app/widget/rounded_password_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = 'signup-screen';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

bool _obscurePasswordTextFiled = true;
String _chosenValue;

enum CategoryType {
  BillInquiryE15,
  PaymentE15,
}

String typeBlood;

int _userSelectedSpecializeList = 1;

class SpecializeList {
  int id;
  String name;

  SpecializeList(this.id, this.name);

  static List<SpecializeList> getCompanies() {
    return <SpecializeList>[
      SpecializeList(1, 'Neurology'),
      SpecializeList(2, 'Nephrology'),
      SpecializeList(3, 'Obstetrics and Gynecology'),
      SpecializeList(4, 'Oncology'),
      SpecializeList(5, 'Ophthalmology'),
      SpecializeList(6, 'Orthopedics'),
      SpecializeList(7, 'Pediatrics'),
    ];
  }
}

class _SignUpScreenState extends State<SignUpScreen> {


  List<SpecializeList> _brand = SpecializeList.getCompanies();
  List<DropdownMenuItem<SpecializeList>> _dropdownMenuSpecializeListItems;
  SpecializeList _selectedSpecializeList;


  DateTime selectedDate = DateTime.now();
  String _dateController = "DD/MM/YYYY";

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        builder: (context, child) {
          return Theme(
              child: child,
              data: ThemeData.light().copyWith(
                primaryColor: const Color(0xff591123),
                accentColor: const Color(0xff591123),
                colorScheme:
                ColorScheme.light(primary: const Color(0xff591123)),
                buttonTheme:
                ButtonThemeData(textTheme: ButtonTextTheme.primary),
              ));
        },
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(1920),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        _dateController = DateFormat.yMd().format(selectedDate);

        print("picked  data : ");
        print(_dateController);
      });
  }

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


    _dateController = DateFormat.yMd().format(DateTime.now());


    _dropdownMenuSpecializeListItems = buildDropdownMenuBrandItems(_brand);
    _selectedSpecializeList = _dropdownMenuSpecializeListItems[0].value;

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


  List<DropdownMenuItem<SpecializeList>> buildDropdownMenuBrandItems(
      List companies) {
    List<DropdownMenuItem<SpecializeList>> items = List();
    for (SpecializeList _item in companies) {
      items.add(
        DropdownMenuItem(
          value: _item,
          child: Text(_item.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownSpecializeListItem(SpecializeList selectedBrand) {
    setState(() {
      _selectedSpecializeList = selectedBrand;
      _userSelectedSpecializeList = selectedBrand.id;
      print(selectedBrand.id);

      /// todo :
    });
  }

  @override
  Widget build(BuildContext context) {
    typeBlood = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: DropdownButtonHideUnderline(
        child: SingleChildScrollView(
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Date of birth
                      Text("Date of birth",
                          style: const TextStyle(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Sanchez",
                              fontStyle: FontStyle.normal,
                              fontSize: 15.0),
                          textAlign: TextAlign.left),

                      // Rectangle 1
                      GestureDetector(
                        onTap: (){
                          _selectDate(context);
                        },
                        child: Container(
                          width: 106,
                          height: 28,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              border: Border.all(
                                  color: const Color(0x40000000), width: 1),
                            ),
                          child: Center(
                            child: Text(_dateController ,
                                style: const TextStyle(
                                    color: const Color(0xffbdbdbd),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Sanchez",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10.0),
                                textAlign: TextAlign.left),
                          ),
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 17,
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sepcialist/major",
                          style: const TextStyle(
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Sanchez",
                              fontStyle: FontStyle.normal,
                              fontSize: 15.0),
                          textAlign: TextAlign.left),


                      Container(
                        width: 106,
                        height: 33,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          border: Border.all(color: const Color(0x40000000), width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: DropdownButton(
                            icon: null,
                            value: _selectedSpecializeList,
                            items: _dropdownMenuSpecializeListItems,
                            onChanged: onChangeDropdownSpecializeListItem,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 17,
                  ),
                  RoundedButtonLogin(
                    text: 'Next',
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

                      }
                    },
                  ),
                ],
              ),
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
