import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets_examples/animated_container_widget/animated_container_page.dart';
import 'package:flutter_widgets_examples/clip_rect_widget/clip_r_rect_page.dart';
import 'package:flutter_widgets_examples/custom_paint_widget/custom_paint_page.dart';
import 'package:flutter_widgets_examples/expanded_widget/expanded_page.dart';
import 'package:flutter_widgets_examples/fade_in_image_widget/fade_in_image_widget.dart';
import 'package:flutter_widgets_examples/fade_transition_widget/fade_transition_page.dart';
import 'package:flutter_widgets_examples/fitted_box_widget/fitted_box_page.dart';
import 'package:flutter_widgets_examples/floating_action_button_widget/floating_action_button_page.dart';
import 'package:flutter_widgets_examples/future_builder_widget/future_builder_page.dart';
import 'package:flutter_widgets_examples/hero_widget/hero_page.dart';
import 'package:flutter_widgets_examples/home_page.dart';
import 'package:flutter_widgets_examples/inherited_widget/inherited_model_page.dart';
import 'package:flutter_widgets_examples/opacity_widget/opacity_page.dart';
import 'package:flutter_widgets_examples/page_view_widget/page_view_page.dart';
import 'package:flutter_widgets_examples/safearea_widget/safearea_page.dart';
import 'package:flutter_widgets_examples/sliver_app_bar_widget/sliver_app_bar_page.dart';
import 'package:flutter_widgets_examples/sliver_list_sliver_grid_widget/sliver_list_sliver_grid_page.dart';
import 'package:flutter_widgets_examples/stream_builder_widget/stream_builder_widget.dart';
import 'package:flutter_widgets_examples/table_widget/table_page.dart';
import 'package:flutter_widgets_examples/tooltip_widget/tooltip_page.dart';
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
    case SLIVER_APP_BAR_ROUTE:
      return MaterialPageRoute(builder: (context) => SliverAppBarPage());
    case SLIVER_LIST_AND_SLIVER_GRID_ROUTE:
      return MaterialPageRoute(
          builder: (context) => SliverListSliverGridPage());
    case FADE_IN_IMAGE_ROUTE:
      return MaterialPageRoute(builder: (context) => FadeInImagePage());
    case STREAM_BUILDER_ROUTE:
      return MaterialPageRoute(builder: (context) => StreamBuilderPage());
    case INHERITED_MODEL_ROUTE:
      return MaterialPageRoute(builder: (context) => InheritedModelPage());
    case CLIP_R_RECT_ROUTE:
      return MaterialPageRoute(builder: (context) => ClipRRectPage());
    case HERO_ROUTE:
      return MaterialPageRoute(builder: (context) => HeroPage());
    case CUSTOM_PAINT_ROUTE:
      return MaterialPageRoute(builder: (context) => CustomPaintPage());
    case TOOLTIP_ROUTE:
      return MaterialPageRoute(builder: (context) => TooltipPage());
    case FITTED_BOX_ROUTE:
      return MaterialPageRoute(builder: (context) => FittedBoxPage());
    default:
      return MaterialPageRoute(builder: (context) => HomePage());
  }
}
