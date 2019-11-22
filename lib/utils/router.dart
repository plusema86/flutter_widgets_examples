import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_examples/home_page.dart';
import 'package:flutter_widgets_examples/safearea_widget/safearea_page.dart';
import 'package:flutter_widgets_examples/utils/routing_constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HOME_PAGE_ROUTE:
      return MaterialPageRoute(builder: (context) => HomePage());
    case SAFE_AREA_ROUTE:
      return MaterialPageRoute(builder: (context) => SafeAreaPage());
    default:
      return MaterialPageRoute(builder: (context) => HomePage());
  }
}
