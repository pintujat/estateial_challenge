import 'dart:convert';
import 'dart:ui';
import 'package:estatetial_challenge/Screens/launchdetail.dart';
import 'package:estatetial_challenge/Widgets/shiplist.dart';
import 'package:estatetial_challenge/const.dart';
import 'package:flutter/material.dart';

class MyTabBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        //Display for the Tab 1
        Column(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () async {
                  await _navigateToNextScreen(context);
                },
                child: Card(
                  shadowColor: Colors.grey[50],
                  elevation: 4.0,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 100,
                            height: 100,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Image.asset(kupcomingImage)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(kUpcomingTitle, style: klaunchesTitlestyle),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              kupcomingName,
                              style: klaunchesNamestyle,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              kupcomingCategory,
                              style: klaunchesDescstyle,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              kUpEventDate,
                              style: klaunchesDescstyle,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding:
                    EdgeInsets.only(left: 15, right: 10, top: 20, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      kLaunchDateTitle,
                      style: klaunchesTitlestyle,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      kLaunchDate,
                      style: klaunchesDesc2style,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      kLaunchSiteTitle,
                      style: klaunchesTitlestyle,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      kLaunchSite,
                      style: klaunchesDesc2style,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      kLaunchCountTitle,
                      style: klaunchesTitlestyle,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      kCountDown,
                      style: klaunchesDesc2style,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        //Display for the Tab 2
        ShipList(),
        //Display for the Tab 3
        Container(
          child: Center(
            child: FutureBuilder(
                future: DefaultAssetBundle.of(context).loadString(kRocketjson),
                //fetching data from launches.json
                builder: (context, snapshot) {
                  var myData = json.decode(snapshot.data.toString());
                  return ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Card(
                          shadowColor: Colors.grey[50],
                          elevation: 4.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  width: 80,
                                  height: 80,
                                  margin: const EdgeInsets.all(20.0),
                                  child:
                                      Image.asset(myData[index]["logo_url"])),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("ROCKET",
                                          style: klaunchesTitlestyle),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        myData[index]["name"],
                                        style: klaunchesNamestyle,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        width: 70,
                                        height: 17,
                                        decoration: BoxDecoration(
                                            color: myData[index]["status"] ==
                                                    "ACTIVE"
                                                ? Colors.red
                                                : Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(5.0)),
                                        child: Center(
                                          child: Text(
                                            myData[index]["status"] == "ACTIVE"
                                                ? "INACTIVE"
                                                : "ACTIVE",
                                            style: kstatus,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: myData == null ? 0 : myData.length,
                  );
                }),
          ),
        ),
      ],
    );
  }

//Navigation on Tab View 1 to display launch details
  _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LaunchDetail()));
  }
}
