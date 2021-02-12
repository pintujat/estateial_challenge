import 'package:estatetial_challenge/const.dart';
import 'package:flutter/material.dart';

class LaunchDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back),
            backgroundColor: Colors.black,
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.share),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(color: Colors.black),
                  child: Image.asset("lib/assets/crs.png"),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Rocket",
                          style: klaunchesPage2Titlestyle,
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Falcon 1",
                          style: klaunchesPage2Descstyle,
                        ),
                        SizedBox(height: 25),
                        Text(
                          "LAUNCH DATE",
                          style: klaunchesPage2Titlestyle,
                        ),
                        SizedBox(height: 15),
                        Text(
                          "01-03-2019",
                          style: klaunchesPage2Descstyle,
                        ),
                        SizedBox(height: 25),
                        Text(
                          "LAUNCH SITE",
                          style: klaunchesPage2Titlestyle,
                        ),
                        SizedBox(height: 15),
                        Text(
                          "CCAFS SLC 40",
                          style: klaunchesPage2Descstyle,
                        ),
                        SizedBox(height: 25),
                        Text(
                          "LAUNCH STATUS",
                          style: klaunchesPage2Titlestyle,
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Success",
                          style: klaunchesPage2Descstyle,
                        ),
                        SizedBox(height: 25),
                        Text(
                          "Details",
                          style: klaunchesPage2Titlestyle,
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Last launch of the original Falcon 9v1.0\nlaunch vehicle",
                          style: klaunchesPage2Descstyle,
                        ),
                        SizedBox(height: 25),
                        Text(
                          "ROCKET SUMMARY",
                          style: klaunchesPage2Titlestyle,
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Falcon 9",
                          style: klaunchesPage2Descstyle,
                        ),
                        SizedBox(height: 25),
                        Text(
                          "TYPE",
                          style: klaunchesPage2Titlestyle,
                        ),
                        SizedBox(height: 15),
                        Text(
                          "v1.0",
                          style: klaunchesPage2Descstyle,
                        ),
                        SizedBox(height: 25),
                        Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "FIRST STAGE",
                                  style: klaunchesPage2Titlestyle,
                                ),
                                Text(
                                  "SECOND STAGE",
                                  style: klaunchesPage2Titlestyle,
                                )
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Cores:4",
                                  style: klaunchesPage2Descstyle,
                                ),
                                Text(
                                  "Payloads: 150kg",
                                  style: klaunchesPage2Descstyle,
                                )
                              ],
                            ),
                            SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "YOUTUBE",
                                  style: klaunchesPage2Titlestyle,
                                ),
                                Text(
                                  "REDDIT",
                                  style: klaunchesPage2Titlestyle,
                                )
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  width: 90,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Color(0xffD21F06),
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Center(
                                    child: Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 90,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFF5B14),
                                      borderRadius: BorderRadius.circular(5.0)),
                                  child: Center(
                                    child: Icon(
                                      Icons.face,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            Container(
                              width: 330,
                              height: 350,
                              padding: EdgeInsets.all(10.0),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Image.asset("lib/assets/Rectangle2.png"),
                                  Image.asset("lib/assets/spaceship1.jpg"),
                                ],
                              ),
                            ),
                            SizedBox(height: 25),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
