import 'package:flutter/material.dart';
import 'package:flutter_widgets_examples/models/routing_model.dart';
import 'package:flutter_widgets_examples/utils/routing_utils.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<RoutingModel> widgetRouteList = RoutingUtils.widgetRouteList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Widgets Home Page"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.black38,
          height: 1,
        ),
        itemCount: widgetRouteList.length,
        itemBuilder: (BuildContext context, int index) {
          RoutingModel routingItem = widgetRouteList[index];
          return HomePageItemWidget(
            title: routingItem.id,
            routeName: routingItem.routeName,
            description: routingItem.description,
          );
        },
      ),
    );
  }
}

class HomePageItemWidget extends StatelessWidget {
  final String title;
  final String routeName;
  final String description;

  const HomePageItemWidget(
      {Key key, this.title, this.routeName, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(routeName);
      },
      child: Container(
        child: Column(
          children: <Widget>[
            Text("$title"),
            Text("$description"),
          ],
        ),
      ),
    );
  }
}
