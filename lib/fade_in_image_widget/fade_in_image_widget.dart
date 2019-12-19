import 'package:flutter/material.dart';

class FadeInImagePage extends StatefulWidget {
  @override
  _FadeInImagePageState createState() => _FadeInImagePageState();

  ImageCache get imageCache => PaintingBinding.instance.imageCache;

}

class _FadeInImagePageState extends State<FadeInImagePage> {
  bool changePic = false;

  @override
  void initState() {
    super.initState();
    widget.imageCache.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FadeInImage Widget"),
      ),
      body: Center(
        child: FadeInImage.assetNetwork(
          fadeOutDuration: const Duration(seconds: 1),
          fadeInDuration: const Duration(seconds: 1),
          fadeInCurve: Curves.easeInSine,
          fadeOutCurve: Curves.easeOutSine,
          placeholder: 'assets/images/placeholder.png',
          image: changePic
              ? 'https://cdn.pixabay.com/photo/2019/12/12/15/30/people-4690996_960_720.jpg'
              : 'https://cdn.pixabay.com/photo/2019/12/14/14/59/zebra-4695038_960_720.jpg',
        ),
      ),
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton(
          onPressed: () {
            setState(() {
              widget.imageCache.clear();
              changePic = !changePic;
            });
          },
          child: Icon(Icons.shuffle),
        );
      }),
    );
  }
}
