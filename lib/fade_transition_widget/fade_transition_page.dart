import 'package:flutter/material.dart';

class FadeTransitionPage extends StatefulWidget {
  @override
  _FadeTransitionPageState createState() => _FadeTransitionPageState();
}

class _FadeTransitionPageState extends State<FadeTransitionPage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  bool fadeOn = true;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    fadeOn ? _animationController.forward() : _animationController.reverse();
    return Scaffold(
      appBar: AppBar(
        title: Text("FadeTransition Widget"),
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
        ),
      ),
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton(
          onPressed: () {
            setState(() {
              fadeOn = !fadeOn;
            });
            Scaffold.of(context).showSnackBar(
              SnackBar(
                duration: const Duration(milliseconds: 300),
                content:
                    Text("FadeTransition ${fadeOn ? 'forward' : 'reverse'}"),
              ),
            );
          },
          child: Icon(Icons.power_settings_new),
        );
      }),
    );
  }
}
