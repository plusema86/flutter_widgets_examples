import 'package:flutter/material.dart';

class FittedBoxPage extends StatefulWidget {
  @override
  _FittedBoxPageState createState() => _FittedBoxPageState();
}

class _FittedBoxPageState extends State<FittedBoxPage> {
  bool fittedBoxOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBox Widget"),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.2,
          color: Colors.amber,
          child: FittedBox(
            fit: fittedBoxOn ? BoxFit.contain : BoxFit.none,
            child: Image(image: AssetImage('assets/images/foresta.jpg')),
          ),
        ),
      ),
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton(
          onPressed: () {
            setState(() {
              fittedBoxOn = !fittedBoxOn;
            });
            Scaffold.of(context).showSnackBar(
              SnackBar(
                duration: const Duration(milliseconds: 300),
                content: Text("FittedBox ${fittedBoxOn ? 'on' : 'off'}"),
              ),
            );
          },
          child: Icon(Icons.power_settings_new),
        );
      }),
    );
  }
}
