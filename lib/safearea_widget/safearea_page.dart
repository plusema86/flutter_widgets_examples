import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SafeAreaPage extends StatefulWidget {
  SafeAreaPage({Key key}) : super(key: key);

  @override
  _SafeAreaPageState createState() => _SafeAreaPageState();
}

class _SafeAreaPageState extends State<SafeAreaPage> {
  bool safeAreaOn = true;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: safeAreaOn
            ? SafeArea(
                child: MockListWidget(),
              )
            : Container(
                child: MockListWidget(),
              ),
        floatingActionButton: Builder(builder: (BuildContext context) {
          return FloatingActionButton(
            onPressed: () {
              setState(() {
                safeAreaOn = !safeAreaOn;
              });
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text("SafeArea ${safeAreaOn ? 'on' : 'off'}"),
                ),
              );
            },
            child: Icon(Icons.power_settings_new),
          );
        }),
      ),
    );
  }
}

class MockListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt'),
          );
        },
      ),
    );
  }
}
