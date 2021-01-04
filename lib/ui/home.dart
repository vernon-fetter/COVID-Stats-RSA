import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'lockdown_status/lockdown_status.dart';
import 'lockdown_statistics/lockdown_statistics.dart';
import 'lockdown_newsfeed/lockdown_newsfeed.dart';
import 'about.dart';
import 'covid_information.dart';
import 'lockdown_stages_explained.dart';

// Author: VC Fetter

class Home extends StatefulWidget {
  final double latitude;
  final double longitude;
  final String address;

  const Home({Key key, this.latitude, this.longitude, this.address})
      : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;



  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  openBrowserTab() async {
    await FlutterWebBrowser.openWebPage(
        url: 'https://www.solidarityfund.co.za/donate.html',
        androidToolbarColor: Color(0xff788475));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                padding: EdgeInsets.all(20.0),
                child: Image.asset('./assets/images/logo.png')
              ),
              ListTile(
                title: Text('COVID-19 Information'),
                onTap: () {
                  var whatIsCovidRouter = new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          CovidInformationPage());
                  Navigator.of(context).push(whatIsCovidRouter);
                },
              ),
              ListTile(
                title: Text('Lockdown Stages Explained'),
                onTap: () {
                  var lockdownStagesExplainedRouter = new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          LockdownStagesExplainedPage());
                  Navigator.of(context).push(lockdownStagesExplainedRouter);
                },
              ),
              ListTile(
                title: Text('Donate to the Solidarity Fund'),
                onTap: () => openBrowserTab(),
              ),
              ListTile(
                title: Text('About'),
                onTap: () {
                  var aboutRouter = new MaterialPageRoute(
                      builder: (BuildContext context) => AboutPage());
                  Navigator.of(context).push(aboutRouter);
                },
              ),
            ],
          ),
        ),
        appBar: new AppBar(
          title: Text(
            'RSA COVID-19 Stats',
          ),
          centerTitle: true,
          backgroundColor: Color(0xff788475),
          elevation: 0.1,
          toolbarOpacity: 0.8,
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Color(0xff5E5D5C),
            tabs: <Widget>[
              Tab(icon: Icon(Icons.verified_user), text: 'Lockdown Status'),
              Tab(icon: Icon(Icons.insert_chart), text: 'RSA Statistics'),
              Tab(icon: Icon(Icons.new_releases), text: 'COVID-19 Newsfeed'),
//              Tab(
//                icon: Icon(Icons.person),
//                text: 'Settings',
//              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            LockdownStatus(
                latitude: widget.latitude,
                longitude: widget.longitude,
                address: widget.address),
            LockdownStatistics(),
            LockdownNewsfeed(),
//            Profile(
//              auth: widget.auth,
//              onSignedOut: widget.onSignedOut,
//            ),
          ],
        ));
  }
}
