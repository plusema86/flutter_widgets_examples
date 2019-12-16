import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  bool animatedOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container Widget"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 2),
          width: animatedOn
              ? MediaQuery.of(context).size.width * 0.8
              : MediaQuery.of(context).size.width * 0.6,
          height: animatedOn
              ? MediaQuery.of(context).size.height * 0.4
              : MediaQuery.of(context).size.height * 0.8,
          color: animatedOn ? Colors.blue : Colors.amber,
          curve: Curves.elasticInOut,
        ),
      ),
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton(
          onPressed: () {
            setState(() {
              animatedOn = !animatedOn;
            });
          },
          child: Icon(Icons.power_settings_new),
        );
      }),
    );
  }
}
