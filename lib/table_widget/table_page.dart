import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  @override
  _TablePageState createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table Widget"),
      ),
      body: Center(
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          border: TableBorder.all(),
          children: [
            TableRow(children: [
              WideWidget(),
              MediumWidget(),
              MediumWidget(),
            ]),
            TableRow(children: [
              NarrowWidget(),
              MediumWidget(),
              WideWidget(),
            ]),
            TableRow(children: [
              NarrowWidget(),
              WideWidget(),
              NarrowWidget(),
            ]),
          ],
        ),
      ),
    );
  }
}

class WideWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 100,
    );
  }
}

class MediumWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      height: 75,
    );
  }
}

class NarrowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      height: 50,
    );
  }
}
