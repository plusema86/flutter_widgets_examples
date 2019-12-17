import 'package:flutter/material.dart';
import 'dart:async';

class FutureBuilderPage extends StatefulWidget {
  @override
  _FutureBuilderPageState createState() => _FutureBuilderPageState();
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  Future<String> _mockValue = Future<String>.delayed(
    Duration(seconds: 2),
    () => 'Mock data Loaded',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureBuilder Widget"),
      ),
      body: FutureBuilder(
          future: _mockValue,
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            List<Widget> widgetList;

            widgetList = provideWidget(snapshot);

            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: widgetList,
              ),
            );
          }),
    );
  }

  List<Widget> provideWidget(AsyncSnapshot<String> snapshot) {
    if (snapshot.hasData) {
      return <Widget>[
        Icon(
          Icons.check_circle,
          color: Colors.green,
          size: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text('Result: ${snapshot.data}'),
        ),
      ];
    } else if (snapshot.hasError) {
      return <Widget>[
        Icon(
          Icons.error,
          color: Colors.red,
          size: 50,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text('Result: ${snapshot.error}'),
        ),
      ];
    } else {
      return <Widget>[
        SizedBox(
          width: 50,
          height: 50,
          child: CircularProgressIndicator(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text('Progress...'),
        ),
      ];
    }
  }
}
