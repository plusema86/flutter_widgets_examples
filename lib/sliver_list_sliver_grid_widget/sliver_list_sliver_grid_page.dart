import 'package:flutter/material.dart';
import 'package:flutter_widgets_examples/sliver_list_sliver_grid_widget/sliver_grid_widget.dart';
import 'package:flutter_widgets_examples/sliver_list_sliver_grid_widget/sliver_list_widget.dart';

class SliverListSliverGridPage extends StatefulWidget {
  @override
  _SliverListSliverGridPageState createState() =>
      _SliverListSliverGridPageState();
}

class _SliverListSliverGridPageState extends State<SliverListSliverGridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SliverList & SliverGrid Widgets"),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverListWidget(),
          SliverGridWidget(),
        ],
      ),
    );
  }
}
