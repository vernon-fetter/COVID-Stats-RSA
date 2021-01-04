import 'package:flutter/material.dart';

class LockdownStagesExplainedPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new LockdownStagesExplainedPageState();
  }
}

class LockdownStagesExplainedPageState extends State<LockdownStagesExplainedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff788475),
        elevation: 0.1,
        title: Text('Lockdown Stages Explained')
      ),
      body: ListView(
        children: [
          ListTile(
                  title: Text(
                    'Level 5',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    'Drastic measures are required to contain the spread of the virus to save lives.',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xff5E5D5C),
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                ),
           ListTile(
                  title: Text(
                    'Level 4',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    'Some activity can be allowed to resume subject to extreme precautions required to limit community transmission and outbreaks.',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xff5E5D5C),
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                ),
           ListTile(
                  title: Text(
                    'Level 3',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    'It involves the easing of some restrictions, including on work and social activities, to address a high risk of transmission.',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xff5E5D5C),
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                ),
           ListTile(
                  title: Text(
                    'Level 2',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    'It involves the further easing of restrictions, but the maintenance of physical distancing and restrictions on some leisure and social activities to prevent a resurgence of the virus.',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xff5E5D5C),
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                ),
           ListTile(
                  title: Text(
                    'Level 1',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text(
                    'Most normal activity can resume, with precautions and health guidelines followed at all times.',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Color(0xff5E5D5C),
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                ),
        ],
      ),
    );
  }
}