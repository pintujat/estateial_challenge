import 'dart:convert';
import 'package:estatetial_challenge/const.dart';
import 'package:flutter/material.dart';

class ShipList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FutureBuilder(
            future: DefaultAssetBundle.of(context).loadString(kLaunchjson),
            builder: (context, snapshot) {
              //fetching data from launches.json
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
                              child: Image.asset(myData[index]["logo_url"])),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Launch", style: klaunchesTitlestyle),
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
                                  Text(
                                    myData[index]["category"],
                                    style: klaunchesDescstyle,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    myData[index]["launchdate"],
                                    style: klaunchesDescstyle,
                                  )
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
    );
  }
}
