import 'package:flutter/material.dart';

class FloatingActionButtonPage extends StatefulWidget {
  @override
  _FloatingActionButtonPageState createState() =>
      _FloatingActionButtonPageState();
}

class _FloatingActionButtonPageState extends State<FloatingActionButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButton Widget"),
      ),
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton(
          onPressed: () {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text("FloatingActionButton Clicked"),
              ),
            );
          },
          child: Icon(Icons.android),
        );
      }),
    );
  }
}
