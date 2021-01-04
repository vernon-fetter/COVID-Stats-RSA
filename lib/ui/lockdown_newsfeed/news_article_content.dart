import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:firebase_admob/firebase_admob.dart';

class ArticlePage extends StatefulWidget {
  final String articleSource;
  final String articleAuthor;
  final String articleTitle;
  final String articleDescription;
  final String articleContent;
  final String articleURL;
  final String articleURLtoImage;
  final String articlePublishedAt;

  const ArticlePage(
      {Key key,
      this.articleSource,
      this.articleAuthor,
      this.articleTitle,
      this.articleDescription,
      this.articleContent,
      this.articleURL,
      this.articleURLtoImage,
      this.articlePublishedAt})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new ArticlePageState();
  }
}

class ArticlePageState extends State<ArticlePage> {
  static const String testDevice = 'Mobile_id';

  @override
  void initState() {
    FirebaseAdMob.instance.initialize(appId: BannerAd.testAdUnitId);
    //Change appId With Admob Id
    _bannerAd = createBannerAd()
      ..load()
      ..show();
    super.initState();
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
        width: 3,
      ),
    );
  }

  openBrowserTab() async {
    await FlutterWebBrowser.openWebPage(
        url: "${widget.articleURL}", androidToolbarColor: Color(0xff788475));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xff788475),
          elevation: 0.1,
          title: Text('${widget.articleTitle}')),
      body: Container(
          child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width * 1,
            child: Image.network('${widget.articleURLtoImage}'),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            child: Text(
              '${widget.articleTitle}',
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            child: Text(
              'An article from ${widget.articleAuthor}',
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            child: Text('${widget.articleDescription}',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.justify),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            child: Text('${widget.articleContent}',
                style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
                textAlign: TextAlign.justify),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
          ),
          GestureDetector(
              child: Container(
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Text('${widget.articleURL}',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.justify),
              ),
              onTap: () => openBrowserTab()),
        ],
      )),
    );
  }
}
