import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:covid_stats/models/rsa_covid_statistics.dart';

// Author: VC Fetter

Future<RsaCovidStatistics> getRsaCovidStatistics() async {
  String link =
      "https://corona.lmao.ninja/v2/countries/south africa";
  final response = await http
      .get(Uri.encodeFull(link), headers: {"Content-Type": "application/json"},
  );
  print(response.body);
  return rsaCovidStatisticsFromJson(response.body);
}
