import 'dart:io';

import 'package:doctor_app/pages/confirm_map_screen.dart';
import 'package:doctor_app/pages/home.dart';
import 'package:doctor_app/widget/custom_empty_text_textfield.dart';
import 'package:doctor_app/widget/custom_text_comment_textfield.dart';
import 'package:doctor_app/widget/custom_text_textfield.dart';
import 'package:doctor_app/widget/rounded_button_login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';

class SignUpSetup2Screen extends StatefulWidget {

  static const routeName = 'signup2-screen';
  @override
  _SignUpSetup2ScreenState createState() => _SignUpSetup2ScreenState();
}

int _userSelectedSpecializeList = 1;

class SpecializeList {
  int id;
  String name;

  SpecializeList(this.id, this.name);

  static List<SpecializeList> getCompanies() {
    return <SpecializeList>[
      SpecializeList(1, '1'),
      SpecializeList(2, '2'),
      SpecializeList(3, '3'),
      SpecializeList(4, '4'),
      SpecializeList(5, '5'),
      SpecializeList(6, '6'),
      SpecializeList(7, '7'),
      SpecializeList(7, '8'),
      SpecializeList(7, '9'),
      SpecializeList(7, '10'),
      SpecializeList(7, '11'),
      SpecializeList(7, '12'),
      SpecializeList(7, '13'),
      SpecializeList(7, '14'),
      SpecializeList(7, '15'),
      SpecializeList(7, '16'),
      SpecializeList(7, '17'),
      SpecializeList(7, '18'),
      SpecializeList(7, '19'),
      SpecializeList(7, '20'),
    ];
  }
}

class _SignUpSetup2ScreenState extends State<SignUpSetup2Screen> {



  bool monVal = false;
  bool tuVal = false;

  bool accepted1 = false;
  bool accepted2 = false;

  Widget checkbox(String title, bool boolValue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // 30 mintus
        Text(title,
            style: const TextStyle(
                color: const Color(0xff2f2f2f),
                fontWeight: FontWeight.w700,
                fontFamily: "Montserrat",
                fontStyle: FontStyle.normal,
                fontSize: 14.0),
            textAlign: TextAlign.left),
        Checkbox(
          value: boolValue,
          onChanged: (bool value) {
            setState(() {
              switch (title) {
                case "30 mintus":
                  monVal = value;
                  break;
                case "1 hour":
                  tuVal = value;
                  break;
              }
            });
          },
        )
      ],
    );
  }

  LocationResult _pickedLocation;


  List<SpecializeList> _brand = SpecializeList.getCompanies();
  List<DropdownMenuItem<SpecializeList>> _dropdownMenuSpecializeListItems;
  SpecializeList _selectedSpecializeList;



  // Here Imae Picker
  String base64Image;
  PickedFile _imageFile;
  dynamic _pickImageError;

  String _retrieveDataError;

  final ImagePicker _picker = ImagePicker();

  void _onImageButtonPressed(ImageSource source, {BuildContext context}) async {
    try {
      final pickedFile = await _picker.getImage(
        source: source,
      );
      setState(() {
        _imageFile = pickedFile;
      });
    } catch (e) {
      setState(() {
        _pickImageError = e;
      });
    }
  }

  Widget _previewImage() {
    if (_imageFile != null) {
      if (kIsWeb) {
        // Why network?
        // See https://pub.flutter-io.cn/packages/image_picker#getting-ready-for-the-web-platform
        return Image.network(_imageFile.path);
      } else {
        return Semantics(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox( height: 150 ,width: 150, child: Image.file(File(_imageFile.path))),
                InkWell(
                  onTap: (){
                    base64Image = null;
                    print("done delete");
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 5 ,right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.delete_forever,
                            color: Colors.redAccent,
                            size: 35,
                          ),
                          Text(
                             'delete',
                            style: TextStyle(
                                color: const Color(0xffb7b9bc),
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.normal,
                                fontSize: 15.0),
                          ),
                        ],
                      )),
                )
              ],
            ),
            label: 'image_picker_example_picked_image');
      }
    } else if (_pickImageError != null) {
      return Text(
        'Pick image error: $_pickImageError',
        textAlign: TextAlign.center,
      );
    } else {
      return const Text(
        'You have not yet picked an image.',
        textAlign: TextAlign.center,
      );
    }
  }

  Future<void> retrieveLostData() async {
    final LostData response = await _picker.getLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null) {
    } else {
      _retrieveDataError = response.exception.code;
    }
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _dropdownMenuSpecializeListItems = buildDropdownMenuBrandItems(_brand);
    _selectedSpecializeList = _dropdownMenuSpecializeListItems[0].value;
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: DropdownButtonHideUnderline(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * .05,
                  ),
                  // Add a profile picture
                  Text("Add a profile picture",
                      style: const TextStyle(
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Sanchez",
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0),
                      textAlign: TextAlign.left),

                  SizedBox(height: 10,),
                  // Ellipse 26
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showAlertDialog(context);
                        },
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0xffffffff),
                                  width: 0.4000000059604645),
                              boxShadow: [
                                BoxShadow(
                                    color: const Color(0x33060606),
                                    offset: Offset(0, 10),
                                    blurRadius: 40,
                                    spreadRadius: 0)
                              ],
                              color: const Color(0xff2992bf)),
                          child: Center(
                            child: SvgPicture.asset('assets/icons/camera.svg'),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Experience in years
                      Text("Experience in years",
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
                          border:
                              Border.all(color: const Color(0x40000000), width: 1),
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
                  ) ,

                  SizedBox(height: 10,),

                  // workstation/hospital
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "workstation/hospital",
                          style: const TextStyle(
                              color:  const Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Sanchez",
                              fontStyle:  FontStyle.normal,
                              fontSize: 15.0
                          ),
                          textAlign: TextAlign.left
                      ),
                      Container(
                        height: 50 ,
                        width: 120,
                        child: CustomEmptyTextFieldField(
                          text: 'optional',
                         // controller: _nameController,
                         // focusOnFieldSubmitted: _emailFocusNode,
                        ),
                      ),
                    ],
                  ) ,

                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "Appointment fee",
                          style: const TextStyle(
                              color:  const Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Sanchez",
                              fontStyle:  FontStyle.normal,
                              fontSize: 15.0
                          ),
                          textAlign: TextAlign.left
                      ),
                      Container(
                        height: 50 ,
                        width: 120,
                        child: CustomEmptyTextFieldField(
                          text: 'required',
                          // controller: _nameController,
                          // focusOnFieldSubmitted: _emailFocusNode,
                        ),
                      ),
                    ],
                  ) ,

                  Row(
                    children: [
                      // Appointment time
                      Expanded(
                        child: Text("Appointment time",
                            style: const TextStyle(
                                color: const Color(0xff71757a),
                                fontWeight: FontWeight.w700,
                                fontFamily: "Montserrat",
                                fontStyle: FontStyle.normal,
                                fontSize: 14.0),
                            textAlign: TextAlign.left),
                      ),
                      Row(
                        children: [
                          checkbox("30 mintus", monVal),
                          checkbox("1 hour", tuVal),
                        ],
                      ),
                    ],
                  ),


                  SizedBox(height: 10,),

                  // workstation/hospital
                  GestureDetector(
                    onTap: () async {
                      LocationResult result = await showLocationPicker(
                        context,
                        'AIzaSyDx7AYIfSJ9rfW1bDuQKOgn4sla7uhJpXg',
                        initialCenter: LatLng(31.1975844, 29.9598339),
//                      automaticallyAnimateToCurrentLocation: true,
//                      mapStylePath: 'assets/mapStyle.json',
                        myLocationButtonEnabled: true,
                        // requiredGPS: true,
                        layersButtonEnabled: true,
                        // countries: ['AE', 'NG']

//                      resultCardAlignment: Alignment.bottomCenter,
                        // desiredAccuracy: LocationAccuracy.best,

                      );
                      print("result = $result");
                      setState(() => _pickedLocation = result);
                    },
                    child: Container(
                      child: Text(
                          "Click Here to Pick location",
                          style:  TextStyle(
                              color:   Colors.red.shade300,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Sanchez",
                              fontStyle:  FontStyle.normal,
                              fontSize: 15.0
                          ),
                          textAlign: TextAlign.left
                      ),
                    ),
                  ) ,



                  Text(_pickedLocation.toString()),

                  SizedBox(height: 10,),
                  CustomCommentTextField(text: 'introduce your self... achievments... experience (required viewd by user',),

                  SizedBox(height: 10,),




                  RoundedButtonLogin(
                    text: 'Next',
                    press: () {
                      Navigator.pushNamed(context, MyHomePage.routeName);
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



  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: new Text('select'),
          content: new Text('select_image_picker_type'),
          actions: <Widget>[
            new FlatButton(
              child: new Text(
                 'camera',
                style: TextStyle(
                  color: Colors.teal,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
                _onImageButtonPressed(ImageSource.camera, context: context);
                //chooseImage(1);

              },
            ),
            new FlatButton(
              child: new Text(
                 'gallery',
                style: TextStyle(
                  color: Colors.teal,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
                _onImageButtonPressed(ImageSource.gallery, context: context);
//                chooseImage(2);
//                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
