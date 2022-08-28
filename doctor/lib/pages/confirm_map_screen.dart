import 'package:doctor_app/widget/rounded_button_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';

class ConfirmMapScreen extends StatefulWidget {
  static final kInitialPosition = LatLng(15.608002, 32.538965);

  static const routeName = 'confirm-map-screen';

  @override
  _ConfirmMapScreenState createState() => _ConfirmMapScreenState();
}

class _ConfirmMapScreenState extends State<ConfirmMapScreen> {
  PickResult selectedPlace;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            PlacePicker(
              apiKey: 'AIzaSyDx7AYIfSJ9rfW1bDuQKOgn4sla7uhJpXg',
              initialPosition: ConfirmMapScreen.kInitialPosition,
              useCurrentLocation: true,
              selectInitialPosition: true,
              usePinPointingSearch: true,
              //usePlaceDetailSearch: true,
              onPlacePicked: (result) {
                selectedPlace = result;
                print("result selectedPlace");
                print(result);
                print(result.addressComponents);
                print(selectedPlace);
                Navigator.of(context).pop();
                setState(() {
                  selectedPlace = result;
                  print("result selectedPlace");
                  print(result);
                  print(selectedPlace);
                });
              },
              selectedPlaceWidgetBuilder:
                  (_, selectedPlace, state, isSearchBarFocused) {
                print("state: $state, isSearchBarFocused: $isSearchBarFocused");
                return isSearchBarFocused
                    ? Container()
                    : FloatingCard(
                        bottomPosition: 0.0,
                        // MediaQuery.of(context) will cause rebuild. See MediaQuery document for the information.
                        leftPosition: 0.0,
                        rightPosition: 0.0,
                        width: 500,
                        borderRadius: BorderRadius.circular(12.0),
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 16,
                              ),
                              state == SearchingState.Searching
                                  ? Center(child: CircularProgressIndicator())
                                  : Padding(
                                      padding: const EdgeInsets.only(
                                          left: 4, right: 4),
                                      child: Text(
                                          selectedPlace.formattedAddress,
                                          style: const TextStyle(
                                              color: const Color(0xff7d8699),
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Tajawal",
                                              fontStyle: FontStyle.normal,
                                              fontSize: 14.0),
                                          textAlign: TextAlign.right),
                                    ),
                              SizedBox(
                                height: 16,
                              ),
                              RoundedButtonLogin(
                                text: "تأكيد الموقع",
                                press: () async {},
                              ),
                              SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                      );
              },
            ),
            // close_button.png
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
//                onTap: () async {
//
//               //   Navigator.of(context).pop();
//
//                  SharedPreferences preferences = await SharedPreferences.getInstance();
//                  String appName = preferences.getString(Consistence.sitename);
//                  _getLocation().then((position) {
//                    userLocation = position;
//                    print("userLocation");
//                    print(userLocation.latitude);
//                    print(userLocation.longitude);
//                    print(position);
//                    getPref(userLocation.latitude ,userLocation.longitude);
//                  });
//                 // Navigator.of(context).pop();
//                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 17, right: 17, left: 17, top: 50),
                    child: SvgPicture.asset('assets/svg/close_button.svg'),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 200, right: 17),
                child: GestureDetector(
                  onTap: () {
                    print(selectedPlace.addressComponents);
                    print(selectedPlace.name);
                    print(selectedPlace.id);
                  },
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0x66bebebe),
                              offset: Offset(0, 2),
                              blurRadius: 8,
                              spreadRadius: 0)
                        ],
                        color: const Color(0xffffffff)),
                    child: Center(
                      child: SvgPicture.asset('assets/svg/ic_direction.svg'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
