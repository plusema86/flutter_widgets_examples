import 'package:flutter/material.dart';

class TooltipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tooltip Widget"),
      ),
      body: Builder(
        builder: (scaffoldContext) => GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            IconButton(
              iconSize: 36,
              icon: Icon(Icons.print),
              onPressed: () {
                _showSnackBar(scaffoldContext, "Print");
              },
              tooltip: "Print",
            ),
            Tooltip(
              message: "Image tooltip",
              child: InkWell(
                onTap: () {
                  _showSnackBar(scaffoldContext, "Image");
                },
                child: Container(
                  child: Image.asset(
                    'assets/images/foresta.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Tooltip(
              message: "Text Widget tooltip",
              child: InkWell(
                onTap: () {
                  _showSnackBar(scaffoldContext, "Text Widget");
                },
                child: Center(
                  child: Container(child: Text("TextWidget")),
                ),
              ),
            ),
            Tooltip(
              message: "FlatButton Widget",
              child: FlatButton(
                onPressed: () {
                  _showSnackBar(scaffoldContext, "FlatButton Widget");
                },
                child: Icon(Icons.android),
              ),
            ),
            Tooltip(
              message: "RaisedButton Widget",
              child: Center(
                child: Container(
                  width: 130,
                  height: 40,
                  child: RaisedButton(
                    child: Text("RaisedButton"),
                    onPressed: () {
                      _showSnackBar(scaffoldContext, "RaisedButton Widget");
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text("Long press to see the '$message' tooltip"),
      ),
    );
  }
}
