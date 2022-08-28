import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_map_location_picker/generated/l10n.dart' as location_picker;
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MyAppMap extends StatefulWidget {
  @override
  _MyAppMapState createState() => _MyAppMapState();
}

class _MyAppMapState extends State<MyAppMap> {
  LocationResult _pickedLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () async {
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
              child: Text('Pick location'),
            ),
            Text(_pickedLocation.toString()),
          ],
        ),
      ),
    );
  }
}