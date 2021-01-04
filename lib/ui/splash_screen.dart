import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:covid_stats/ui/home.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoder/geocoder.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  dynamic currentLocation;

  dynamic first;

  @override
  void initState() {
    // Geolocator().getCurrentPosition().then((currloc) {
    //   setState(() {
    //     currentLocation = currloc;
    //     print(currentLocation.latitude);
    //     print(currentLocation.longitude);
    //   });
    //   final coordinates =
    //       new Coordinates(currentLocation.latitude, currentLocation.longitude);
    //   Geocoder.local
    //       .findAddressesFromCoordinates(coordinates)
    //       .then((addresses) {
    //     setState(() {
    //       first = addresses.first;
    //       print(first.addressLine);
    //     });
    //   });
    // });
    super.initState();
    _fetchPositionandAddress();
  }

  Future _fetchPositionandAddress() async {
    var currloc = await Geolocator().getCurrentPosition(); {
      setState(() {
        currentLocation = currloc;
        print(currentLocation.latitude);
        print(currentLocation.longitude);
      });
      }
      final coordinates =
          await Coordinates(currentLocation.latitude, currentLocation.longitude);
      var addresses = await Geocoder.local
          .findAddressesFromCoordinates(coordinates); {
        setState(() {
          first = addresses.first;
          print(first.addressLine);
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 1,
        loadingText: new Text('South Africa'),
        navigateAfterSeconds: new Home(
          latitude: currentLocation.latitude,
          longitude: currentLocation.longitude,
          address: first.addressLine,
        ),
        title: Text(
          'Covid-19 Lockdown Status, Stats and News',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: Image.asset('./assets/images/logo.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
        ),
        photoSize: 100.0,
        onClick: () => print("Flutter Stuff"),
        loaderColor: Color(0xff453643));
  }
}
