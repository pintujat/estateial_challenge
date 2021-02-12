import 'package:estatetial_challenge/Widgets/NavigationTab.dart';
import 'package:estatetial_challenge/Widgets/mytabview.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final String title;

  Home({this.title});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = new ScrollController();
    scrollController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.black,
            body: Stack(
              children: [
                CustomScrollView(
                  controller: scrollController,
                  slivers: <Widget>[
                    SliverAppBar(
                      actions: <Widget>[
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {},
                        ),
                      ],
                      leading: IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {},
                      ),
                      backgroundColor: Colors.black,
                      title: Center(
                        child: Text(
                          widget.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 70,
                  left: 0,
                  bottom: 0,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    margin: EdgeInsets.only(top: 25),
                    padding: EdgeInsets.only(top: 30),
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[NavigatorTab()],
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
                  bottom: 0,
                  left: 10,
                  right: 10,
                  child: MyTabBarView(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
