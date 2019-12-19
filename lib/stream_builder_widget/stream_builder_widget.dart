import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderPage extends StatefulWidget {
  @override
  _StreamBuilderPageState createState() => _StreamBuilderPageState();
}

class _StreamBuilderPageState extends State<StreamBuilderPage> {
  int _counter = 0;
  StreamController<int> _streamController = new StreamController<int>();

  @override
  void dispose() {
    _streamController?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamBuilder Widget"),
      ),
      body: Center(
        child: StreamBuilder(
            stream: _streamController.stream,
            initialData: 0,
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              if (snapshot.data == 0) {
                return Text("Press the FAB to increment number");
              } else {
                return Text("Pressed $_counter times");
              }
            }),
      ),
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton(
          onPressed: () {
            _streamController.sink.add(++_counter);
          },
          tooltip: 'Increment number',
          child: Icon(Icons.plus_one),
        );
      }),
    );
  }
}
