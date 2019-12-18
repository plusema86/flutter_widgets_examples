import 'package:flutter_widgets_examples/models/routing_model.dart';
import 'package:flutter_widgets_examples/utils/constants.dart';
import 'package:flutter_widgets_examples/utils/routing_constants.dart';

class RoutingUtils {
  RoutingUtils._privateConstructor();

  static final RoutingUtils instance = RoutingUtils._privateConstructor();

  static List<RoutingModel> widgetRouteList = [
    RoutingModel("SafeArea", SAFE_AREA_ROUTE, SAFE_AREA_DESCRIPTION),
    RoutingModel("Expanded", EXPANDED_ROUTE, EXPANDED_DESCRIPTION),
    RoutingModel("Wrap", WRAP_ROUTE, WRAP_DESCRIPTION),
    RoutingModel("Animated Container", ANIMATED_CONTAINER_ROUTE, ANIMATED_CONTAINER_DESCRIPTION),
    RoutingModel("Opacity", OPACITY_ROUTE, OPACITY_DESCRIPTION),
    RoutingModel("FutureBuilder", FUTURE_BUILDER_ROUTE, FUTURE_BUILDER_DESCRIPTION),
    RoutingModel("FadeTransition", FADE_TRANSITION_ROUTE, FADE_TRANSITION_DESCRIPTION),
    RoutingModel("FloatingActionButton", FLOATING_ACTION_BUTTON_ROUTE, FLOATING_ACTION_BUTTON_DESCRIPTION),
    RoutingModel("PageView",PAGE_VIEW_ROUTE, PAGE_VIEW_DESCRIPTION),
    RoutingModel("Table", TABLE_ROUTE, TABLE_DESCRIPTION),
    RoutingModel("SliverAppBar", SLIVER_APP_BAR_ROUTE, SLIVER_APP_BAR_DESCRIPTION),
    RoutingModel("SliverList and SliverGrid", SLIVER_LIST_AND_SLIVER_GRID_ROUTE, SLIVER_LIST_SLIVER_GRID_DESCRIPTION),
  ];
}
