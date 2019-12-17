import 'package:flutter/material.dart';

class OpacityPage extends StatefulWidget {
  @override
  _OpacityPageState createState() => _OpacityPageState();
}

class _OpacityPageState extends State<OpacityPage> {
  bool _opacityOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Opacity(
              opacity: _opacityOn ? 0.1 : 1.0,
              child: Container(
                margin: EdgeInsets.all(36),
                width: 100,
                height: 100,
                color: Colors.amber,
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton(
          onPressed: () {
            setState(() {
              _opacityOn = !_opacityOn;
            });
            Scaffold.of(context).showSnackBar(
              SnackBar(
                duration: const Duration(milliseconds: 300),
                content: Text("Opacity ${_opacityOn ? 'on' : 'off'}"),
              ),
            );
          },
          child: Icon(Icons.power_settings_new),
        );
      }),
    );
  }
}
