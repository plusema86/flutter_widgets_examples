import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  ExpandedPage({Key key}) : super(key: key);

  @override
  _ExpandedPageState createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  bool expandedOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expanded Widget"),),
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: Row(
            key: ValueKey<bool>(expandedOn),
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              expandedOn
                  ? Expanded(
                      child: Container(
                        color: Colors.amber,
                        height: 100,
                        child: Center(
                          child: Text("Expanded ${expandedOn ? 'on' : 'off'}"),
                        ),
                      ),
                    )
                  : Container(
                      color: Colors.amber,
                      height: 100,
                      width: 100,
                      child: Center(
                        child: Text("Expanded ${expandedOn ? 'on' : 'off'}"),
                      ),
                    ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton(
          onPressed: () {
            setState(() {
              expandedOn = !expandedOn;
            });
          },
          child: Icon(Icons.power_settings_new),
        );
      }),
    );
  }
}
