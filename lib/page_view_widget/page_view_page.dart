import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView Widget"),
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          PageWidget(
            backgroundColor: Colors.amber,
            title: "Page 1",
          ),
          PageWidget(
            backgroundColor: Colors.lightBlue,
            title: "Page 2",
          ),
          PageWidget(
            backgroundColor: Colors.lightGreenAccent,
            title: "Page 3",
          ),
        ],
      ),
    );
  }
}

class PageWidget extends StatelessWidget {
  final Color backgroundColor;
  final String title;

  const PageWidget({Key key, this.backgroundColor, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
