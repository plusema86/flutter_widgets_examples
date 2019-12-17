import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_examples/animated_container_widget/animated_container_page.dart';
import 'package:flutter_widgets_examples/expanded_widget/expanded_page.dart';
import 'package:flutter_widgets_examples/home_page.dart';
import 'package:flutter_widgets_examples/opacity_widget/opacity_page.dart';
import 'package:flutter_widgets_examples/safearea_widget/safearea_page.dart';
import 'package:flutter_widgets_examples/utils/routing_constants.dart';
import 'package:flutter_widgets_examples/wrap_widget/wrap_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HOME_PAGE_ROUTE:
      return MaterialPageRoute(builder: (context) => HomePage());
    case SAFE_AREA_ROUTE:
      return MaterialPageRoute(builder: (context) => SafeAreaPage());
    case EXPANDED_ROUTE:
      return MaterialPageRoute(builder: (context) => ExpandedPage());
    case WRAP_ROUTE:
      return MaterialPageRoute(builder: (context) => WrapPage());
    case ANIMATED_CONTAINER_ROUTE:
      return MaterialPageRoute(builder: (context) => AnimatedContainerPage());
    case OPACITY_ROUTE:
      return MaterialPageRoute(builder: (context) => OpacityPage());
    default:
      return MaterialPageRoute(builder: (context) => HomePage());
  }
}
