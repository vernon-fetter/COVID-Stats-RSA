import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoder/geocoder.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:covid_stats/services/admob.dart';

import 'dart:async';

class LockdownStatus extends StatefulWidget {
  final double latitude;
  final double longitude;
  final String address;

  const LockdownStatus({Key key, this.latitude, this.longitude, this.address})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new LockdownStatusState();
  }
}

class LockdownStatusState extends State<LockdownStatus> {
  static const String testDevice = 'Mobile_id';

  Completer<GoogleMapController> _controller = Completer();

  dynamic currentLocation;

  dynamic first;

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  void initState() {
    FirebaseAdMob.instance.initialize(appId: BannerAd.testAdUnitId);
    //Change appId With Admob Id
    _bannerAd = createBannerAd()
      ..load().then((loaded) {
        if (loaded && this.mounted) {
          _bannerAd..show();
        }
      });
    super.initState();
    Geolocator().getCurrentPosition().then((currloc) {
      setState(() {
        currentLocation = currloc;
      });
      final coordinates =
          new Coordinates(currentLocation.latitude, currentLocation.longitude);
      Geocoder.local
          .findAddressesFromCoordinates(coordinates)
          .then((addresses) {
        setState(() {
          first = addresses.first;
        });
      });
    });
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }

  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    nonPersonalizedAds: true,
    keywords: <String>['Game', 'Mario'],
  );

  BannerAd _bannerAd;

  BannerAd createBannerAd() {
    return BannerAd(
        adUnitId: BannerAd.testAdUnitId,
        //Change BannerAd adUnitId with Admob ID
        size: AdSize.banner,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print("BannerAd $event");
        });
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        color: Color(0xff788475),
        width: 5,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xff8DAA91),
            title: Text('Lockdown Status for Your Area')),
        body: Container(
            child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width * 0.85,
              padding: EdgeInsets.all(25.0),
              child: Text(
                'Current Lockdown Status in your Area: Level 5',
                style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
                decoration: myBoxDecoration(),
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.85,
                padding: EdgeInsets.all(5.0),
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(widget.latitude, widget.longitude),
                    zoom: 18.0,
                  ),
                )),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.85,
              padding: EdgeInsets.all(25.0),
              child: Text(
                'Your Current Location: ${widget.address}',
                style: TextStyle(fontSize: 30.0),
                textAlign: TextAlign.center,
              ),
            ),
            RaisedButton(
              padding: const EdgeInsets.all(15.0),
              textColor: Colors.white,
              color: Color(0xff788475),
              onPressed: () => debugPrint('Hello'),
              child: new Text(
                "See Status for a Different Location",
                style: TextStyle(fontSize: 15.0),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        )));
  }
}
