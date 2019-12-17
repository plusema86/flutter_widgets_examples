import 'package:flutter/material.dart';
import 'package:flutter_widgets_examples/utils/router.dart' as router;
import 'package:flutter_widgets_examples/utils/routing_constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Examples',
      theme: ThemeData(
        primaryColor: Colors.blue[900],
        textTheme: GoogleFonts.ralewayTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      onGenerateRoute: router.generateRoute,
      initialRoute: HOME_PAGE_ROUTE,
    );
  }
}
