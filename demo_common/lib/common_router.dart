import 'package:flutter/material.dart';

import 'getx_setting.dart';

class CommonRouter {
  static const ROUTE_COMMON_SETTING = '/demo_common/getx_setting';

  static Map<String, WidgetBuilder> routes = {
    ROUTE_COMMON_SETTING: (context) => GetxSetting(),
  };
}
