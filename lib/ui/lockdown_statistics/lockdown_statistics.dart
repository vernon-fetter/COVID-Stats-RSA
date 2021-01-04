import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:firebase_admob/firebase_admob.dart';

import 'package:covid_stats/requests/rsa_covid_statistics_request.dart';
import 'package:covid_stats/models/rsa_covid_statistics.dart';

// Author: VC Fetter

class LockdownStatistics extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LockdownStatisticsState();
  }
}

class LockdownStatisticsState extends State<LockdownStatistics> {
  static const String testDevice = 'Mobile_id';

  var currentLocation;

  @override
  void initState() {
    FirebaseAdMob.instance.initialize(appId: BannerAd.testAdUnitId);
    //Change appId With Admob Id
    _bannerAd = createBannerAd()
      ..load()
      ..show();
    super.initState();
    Geolocator().getCurrentPosition().then((currLocation) {
      setState(() {
        currentLocation = currLocation;
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
      color: Colors.white,
      border: Border.all(
        color: Color(0xff8DAA91),
        width: 0.5,
      ),
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
    );
  }

  Widget listViewWidget(RsaCovidStatistics rsaCovidStatistics) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color(0xff8DAA91),
            title: Text('COVID-19 Statistics for South Africa')),
        body: Container(
          child: ListView.builder(
              itemCount: 1,
              padding: const EdgeInsets.all(1.0),
              itemBuilder: (context, position) {
                return Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Cases Recorded',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        '${rsaCovidStatistics.cases}',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff5E5D5C),
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Recovered Individuals',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        '${rsaCovidStatistics.recovered}',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff5E5D5C),
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Deaths',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        '${rsaCovidStatistics.deaths}',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff5E5D5C),
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Tests Done',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        '${rsaCovidStatistics.tests}',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff5E5D5C),
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Active Cases',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        '${rsaCovidStatistics.active}',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff5E5D5C),
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Patients in Critical Condition',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        '${rsaCovidStatistics.critical}',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff5E5D5C),
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'New Cases Reported Today',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        '${rsaCovidStatistics.todayCases}',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff5E5D5C),
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Deaths Reported Today',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        '${rsaCovidStatistics.todayDeaths}',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff5E5D5C),
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Cases per One Million',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        '${rsaCovidStatistics.casesPerOneMillion}',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff5E5D5C),
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Deaths per One Million',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        '${rsaCovidStatistics.deathsPerOneMillion}',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff5E5D5C),
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Tests per One Million',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        '${rsaCovidStatistics.testsPerOneMillion}',
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xff5E5D5C),
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Last Updated at: ${DateTime.now().toLocal()}',
                        style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        '',
                        style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                );
              }),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder(
            future: getRsaCovidStatistics(),
            builder: (context, snapshotRSACovidStatistics) {
              return snapshotRSACovidStatistics.data != null
                  ? listViewWidget(snapshotRSACovidStatistics.data)
                  : Center(
                      child: CircularProgressIndicator(
                      backgroundColor: Color(0xff8DAA91),
                    ));
            }));
  }
}
