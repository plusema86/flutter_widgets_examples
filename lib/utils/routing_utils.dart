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
  ];
}
