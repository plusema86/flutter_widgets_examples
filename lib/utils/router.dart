import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_examples/animated_container_widget/animated_container_page.dart';
import 'package:flutter_widgets_examples/expanded_widget/expanded_page.dart';
import 'package:flutter_widgets_examples/fade_transition_widget/fade_transition_page.dart';
import 'package:flutter_widgets_examples/floating_action_button_widget/floating_action_button_page.dart';
import 'package:flutter_widgets_examples/future_builder_widget/future_builder_page.dart';
import 'package:flutter_widgets_examples/home_page.dart';
import 'package:flutter_widgets_examples/opacity_widget/opacity_page.dart';
import 'package:flutter_widgets_examples/page_view_widget/page_view_page.dart';
import 'package:flutter_widgets_examples/safearea_widget/safearea_page.dart';
import 'package:flutter_widgets_examples/table_widget/table_page.dart';
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
    case FUTURE_BUILDER_ROUTE:
      return MaterialPageRoute(builder: (context) => FutureBuilderPage());
    case FADE_TRANSITION_ROUTE:
      return MaterialPageRoute(builder: (context) => FadeTransitionPage());
    case FLOATING_ACTION_BUTTON_ROUTE:
      return MaterialPageRoute(
          builder: (context) => FloatingActionButtonPage());
    case PAGE_VIEW_ROUTE:
      return MaterialPageRoute(builder: (context) => PageViewPage());
    case TABLE_ROUTE:
      return MaterialPageRoute(builder: (context) => TablePage());
    default:
      return MaterialPageRoute(builder: (context) => HomePage());
  }
}
