import 'package:flutter/material.dart';

class ClipRRectPage extends StatefulWidget {
  @override
  _ClipRRectPageState createState() => _ClipRRectPageState();
}

class _ClipRRectPageState extends State<ClipRRectPage> {
  bool borderOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipRRect Widget"),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              margin: EdgeInsets.symmetric(horizontal: 36.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(borderOn ? 24.0 : 0.0),
                child: Image(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                    'assets/images/foresta.jpg',
                  ),
                ),
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
                  child: Text("Border ${borderOn ? 'off' : 'on'}"),
                  onPressed: () {
                    setState(() {
                      borderOn = !borderOn;
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
