import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:covid_stats/requests/rsa_covid_newsfeed_request.dart';
import 'package:covid_stats/models/rsa_news.dart';
import 'package:covid_stats/ui/lockdown_newsfeed/news_article_content.dart';
import 'package:covid_stats/services/admob.dart';

// Author: VC Fetter

class LockdownNewsfeed extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LockdownNewsfeedState();
  }
}

class LockdownNewsfeedState extends State<LockdownNewsfeed> {

  @override
  void initState() {
    hideBann
    super.initState();
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

  Widget listViewWidget(RsaNews rsaNews) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
      backgroundColor: Color(0xff8DAA91),
      title: Text('COVID-19 News in South Africa')),
      body: Container(
        child: ListView.builder(
            itemCount: 20,
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            itemBuilder: (context, position) {
              return Container(
                  decoration: myBoxDecoration(),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Image.network(
                          '${rsaNews.articles[position].urlToImage}',
                        ),
                        trailing: Icon(Icons.arrow_forward),
                        title: Text(
                          '${rsaNews.articles[position].title}',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        onTap: () {
                          var articleRouter = new MaterialPageRoute(
                              builder: (BuildContext context) => ArticlePage(
                                    articleTitle:
                                        '${rsaNews.articles[position].title}',
                                    articleDescription:
                                        '${rsaNews.articles[position].description}',
                                    articleContent:
                                        '${rsaNews.articles[position].content}',
                                  ));
                          Navigator.of(context).push(articleRouter);
                        },
                      ),
                      ListTile(
                        title: Text(
                          '${rsaNews.articles[position].description}',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xff5E5D5C),
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.left,
                        ),
                        onTap: () {
                          var articleRouter = new MaterialPageRoute(
                              builder: (BuildContext context) => ArticlePage(
                                    articleSource:
                                        '${rsaNews.articles[position].source}',
                                    articleAuthor:
                                        '${rsaNews.articles[position].author}',
                                    articleTitle:
                                        '${rsaNews.articles[position].title}',
                                    articleDescription:
                                        '${rsaNews.articles[position].description}',
                                    articleContent:
                                        '${rsaNews.articles[position].content}',
                                    articleURL:
                                        '${rsaNews.articles[position].url}',
                                    articleURLtoImage:
                                        '${rsaNews.articles[position].urlToImage}',
                                    articlePublishedAt:
                                        '${rsaNews.articles[position].publishedAt}',
                                  ));
                          Navigator.of(context).push(articleRouter);
                        },
                      ),
                    ],
                  ));
            }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder(
            future: getRsaNews(),
            builder: (context, snapshotRsaNews) {
              return snapshotRsaNews.data != null
                  ? listViewWidget(snapshotRsaNews.data)
                  : Center(
                      child: CircularProgressIndicator(
                      backgroundColor: Color(0xff8DAA91),
                    ));
            }));
  }
}
