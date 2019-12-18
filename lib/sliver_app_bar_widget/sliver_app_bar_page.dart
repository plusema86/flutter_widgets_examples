import 'package:flutter/material.dart';

class SliverAppBarPage extends StatefulWidget {
  @override
  _SliverAppBarPageState createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  bool floatingOn = false;
  bool pinnedOn = false;
  bool snapOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                floating: floatingOn,
                pinned: pinnedOn,
                snap: snapOn,
                expandedHeight: 150.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text("SliverAppBar Widget"),
                ),
              ),
              SliverFixedExtentList(
                itemExtent: 50.0,
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.lightBlue[100 * (index % 9)],
                      child: Text('List Item $index'),
                    );
                  },
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Text("Floating ${floatingOn ? 'on' : 'off'}"),
                  onPressed: () {
                    setState(() {
                      floatingOn = !floatingOn;
                      if (!floatingOn) {
                        snapOn = false;
                      }
                    });
                  },
                ),
                RaisedButton(
                  child: Text("Pinned ${pinnedOn ? 'on' : 'off'}"),
                  onPressed: () {
                    setState(() {
                      pinnedOn = !pinnedOn;
                    });
                  },
                ),
                RaisedButton(
                  child: Text("Snap ${snapOn ? 'on' : 'off'}"),
                  onPressed: () {
                    setState(() {
                      snapOn = !snapOn;
                      if (snapOn) {
                        floatingOn = true;
                      }
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
