import 'package:flutter/material.dart';

class InheritedModelPage extends StatefulWidget {
  @override
  _InheritedModelPageState createState() => _InheritedModelPageState();
}

class _InheritedModelPageState extends State<InheritedModelPage> {
  Color colorOne = Colors.grey;
  Color colorTwo = Colors.grey;

  bool colorBoxOneOn = false;
  bool colorBoxTwoOn = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InheritedModel Widget"),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Ancestor(
              colorOne,
              colorTwo,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ColorOneWidget(),
                  ColorTwoWidget(),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Text("Change box 1 color"),
                  onPressed: () {
                    setState(() {
                      colorBoxOneOn = !colorBoxOneOn;
                      colorOne =
                          colorBoxOneOn ? Colors.amber : Colors.redAccent;
                    });
                  },
                ),
                RaisedButton(
                  child: Text("Change box 2 color"),
                  onPressed: () {
                    setState(() {
                      colorBoxTwoOn = !colorBoxTwoOn;
                      colorTwo =
                          colorBoxTwoOn ? Colors.lightGreen : Colors.lightBlue;
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

class Ancestor extends InheritedModel<String> {
  final Color colorOne;
  final Color colorTwo;

  Ancestor(this.colorOne, this.colorTwo, Widget child) : super(child: child);

  @override
  bool updateShouldNotify(Ancestor oldWidget) {
    return colorOne != oldWidget.colorOne || colorTwo != oldWidget.colorTwo;
  }

  @override
  bool updateShouldNotifyDependent(
      Ancestor oldWidget, Set<String> dependencies) {
    if (dependencies.contains('one') && colorOne != oldWidget.colorOne) {
      return true;
    }
    if (dependencies.contains('two') && colorTwo != oldWidget.colorTwo) {
      return true;
    }

    return false;
  }
}

class ColorOneWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ancestor =
        InheritedModel.inheritFrom<Ancestor>(context, aspect: 'one');

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      color: ancestor.colorOne,
      height: 100,
      width: 100,
      child: Center(
        child: Text("Box 1"),
      ),
    );
  }
}

class ColorTwoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ancestor =
        InheritedModel.inheritFrom<Ancestor>(context, aspect: 'two');
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      color: ancestor.colorTwo,
      height: 100,
      width: 100,
      child: Center(
        child: Text("Box 2"),
      ),
    );
  }
}
