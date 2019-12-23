import 'package:flutter/material.dart';
import 'package:flutter_widgets_examples/custom_paint_widget/my_painter.dart';

class CustomPaintPage extends StatefulWidget {
  @override
  _CustomPaintPageState createState() => _CustomPaintPageState();
}

class _CustomPaintPageState extends State<CustomPaintPage> {

  PaintType _selectedPaintType = PaintType.points;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomPaint Widget"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          CustomPaint(
            size: Size(MediaQuery.of(context).size.width, 200),
            painter: MyPainter(_selectedPaintType),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 16.0),
              child: RaisedButton(
                child: Text("Change Paint"),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return SimpleDialog(
                        title: Text("Choose a paint"),
                        children: <Widget>[
                          _simpleDialogOptionPaintType("Points", PaintType.points),
                          _simpleDialogOptionPaintType("Lines", PaintType.lines),
                          _simpleDialogOptionPaintType("Rectangles", PaintType.rectangles),
                          _simpleDialogOptionPaintType("Circles", PaintType.circles),
                          _simpleDialogOptionPaintType("Ovals", PaintType.ovals),
                          _simpleDialogOptionPaintType("Arcs", PaintType.arcs),
                          _simpleDialogOptionPaintType("Paths", PaintType.paths),
                          _simpleDialogOptionPaintType("Text", PaintType.text),
                        ],
                      );
                    }
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  SimpleDialogOption _simpleDialogOptionPaintType(String label, PaintType paintType){
    return SimpleDialogOption(
      child: Text("$label"),
      onPressed: (){
        Navigator.of(context).pop();
        setState(() {
          _selectedPaintType = paintType;
        });
      },
    );
  }
}

