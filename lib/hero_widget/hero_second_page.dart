import 'package:flutter/material.dart';

class HeroSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Widget Second Page"),
      ),
      body: Container(
        child: Hero(
            tag: 'hero_tag', child: Image.asset('assets/images/foresta.jpg')),
      ),
    );
  }
}
