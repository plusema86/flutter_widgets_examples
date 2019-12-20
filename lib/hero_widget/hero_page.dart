import 'package:flutter/material.dart';
import 'package:flutter_widgets_examples/hero_widget/hero_second_page.dart';

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Widget"),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
              height: 200,
              width: 200,
              child: Hero(
                tag: 'hero_tag',
                child: Image.asset(
                  'assets/images/foresta.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: 16.0),
              child: RaisedButton(
                child: Text("Next Page"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HeroSecondPage()));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
