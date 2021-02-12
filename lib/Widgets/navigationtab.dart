import 'package:estatetial_challenge/const.dart';
import 'package:flutter/material.dart';

class NavigatorTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      labelColor: primaryColor,
      indicatorColor: primaryColor,
      indicator: UnderlineTabIndicator(
          borderSide: BorderSide(width: 3.0, color: primaryColor),
          insets: EdgeInsets.symmetric(horizontal: 35.0)),
      unselectedLabelColor: secondaryColor,
      tabs: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Upcoming",
            style: kTabSize,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Launches",
            style: kTabSize,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Rockets",
            style: kTabSize,
          ),
        ),
      ],
    );
  }
}
