import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wechive/app/routes/app_pages.dart';
//* USE LIKE THIS var location=LocatorService.determinePosition();
class LocatorService {
  static Future<Position?> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    Position location;
    // Test if location services are enabled.

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      Get.defaultDialog(
        barrierDismissible: false,
        title: "Location must be enabled ",
        middleText:
            "Please enable location permission to use this feature and try again",
        actions: [
          TextButton.icon(
              style: TextButton.styleFrom(
                elevation: 0,
                alignment: Alignment.bottomLeft,
                //  backgroundColor: Colors.green.shade200,
              ),
              onPressed: () {
                //TODO : GO TO YOUR PREFERED SCREEN
                Get.offAllNamed(Routes.HOME);
              },
              icon: Icon(
                Icons.clear,
                color: Colors.redAccent,
              ),
              label: Text(
                "close",
               
              )),
          TextButton.icon(
              style: TextButton.styleFrom(
                elevation: 0,
                alignment: Alignment.bottomRight,
                //  backgroundColor: Colors.green.shade200,
              ),
              onPressed: () {
                Geolocator.openAppSettings();
              },
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.green,
              ),
              label: Text(
                "enable permission",
              )),
        ],
      );
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        // Get.offAllNamed(Routes.HOME);
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      Get.defaultDialog(
        barrierDismissible: false,
        title: "Location must be enabled ",
        
        middleText:
            "Please enable location permissionto use this feature and try again",
        actions: [
          TextButton.icon(
              style: TextButton.styleFrom(
                elevation: 0,
                alignment: Alignment.bottomLeft,
                //  backgroundColor: Colors.green.shade200,
              ),
              onPressed: () {
                
                //TODO : GO TO YOUR PREFERED SCREEN
                Get.offAllNamed(Routes.HOME);
              },
              icon: Icon(
                Icons.clear,
                color: Colors.redAccent,
              ),
              label: Text(
                "close",
              )),
          TextButton.icon(
              style: TextButton.styleFrom(
                elevation: 0,
                alignment: Alignment.bottomRight,
                //  backgroundColor: Colors.green.shade200,
              ),
              onPressed: () {
                Geolocator.openAppSettings();
              },
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.green,
              ),
              label: Text(
                "allow permission",
              )),
        ],
      );
      if (permission == LocationPermission.deniedForever)
        //Get.offAllNamed(Routes.HOME);
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
    }
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      Get.defaultDialog(
        barrierDismissible: false,
        title: "Location must be enabled ",
       
        middleText:
            "Please enable location permissionto use this feature and try again",
        actions: [
          TextButton.icon(
              style: TextButton.styleFrom(
                elevation: 0,
                alignment: Alignment.bottomLeft,
                //  backgroundColor: Colors.green.shade200,
              ),
              onPressed: () {
                Get.offAllNamed(Routes.HOME);
              },
              icon: Icon(
                Icons.clear,
                color: Colors.redAccent,
              ),
              label: Text(
                "close",
              )),
          TextButton.icon(
              style: TextButton.styleFrom(
                elevation: 0,
                alignment: Alignment.bottomRight,
                //  backgroundColor: Colors.green.shade200,
              ),
              onPressed: () {
                Geolocator.openLocationSettings();
              },
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.green,
              ),
              label: Text(
                "enable location",
              )),
        ],
      );

      //Geolocator.openLocationSettings();
      if (!serviceEnabled) {
        // Get.offAllNamed(Routes.HOME);
      }

      return Future.error('Location services are disabled.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    location = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
        forceAndroidLocationManager: false);
    return location;
  }
}
