import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:covid_stats/models/rsa_news.dart';

// Author: VC Fetter

Future<RsaNews> getRsaNews() async {
  String link =
      "http://newsapi.org/v2/top-headlines?country=za&everything?q=covid&sortBy=popularity&apiKey=bcbfbca441a049288edef59a41eb0c4d";
  final response = await http
      .get(Uri.encodeFull(link), headers: {"Content-Type": "application/json"},
  );
  print(response.body);
  return rsaNewsFromJson(response.body);
}