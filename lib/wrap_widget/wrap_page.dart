import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_examples/wrap_widget/wrap_utils.dart';

class WrapPage extends StatefulWidget {
  @override
  _WrapPageState createState() => _WrapPageState();
}

class _WrapPageState extends State<WrapPage> {
  bool wrapOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Widget"),
      ),
      body: Center(
        child: wrapOn
            ? Wrap(
                spacing: 4.0,
                runSpacing: 1.0,
                children: _actorChipList(),
              )
            : Row(
                children: _actorChipList(),
              ),
      ),
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton(
          onPressed: () {
            setState(() {
              wrapOn = !wrapOn;
            });
            Scaffold.of(context).showSnackBar(
              SnackBar(
                duration: const Duration(milliseconds: 300),
                content: Text("Wrap ${wrapOn ? 'on' : 'off'}"),
              ),
            );
          },
          child: Icon(Icons.power_settings_new),
        );
      }),
    );
  }

  List<Widget> _actorChipList() {
    List<Widget> widgetList = List();
    wrapActorList.forEach((actor) {
      widgetList.add(
        Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.blue.shade900,
            child: AutoSizeText(
              "${actor.avatarInitials}",
              maxLines: 1,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          label: Text(
            "${actor.name}",
          ),
        ),
      );
    });
    return widgetList;
  }
}
