import 'package:flutter/material.dart';

import 'package:components_project_course/src/pages/alert_page.dart';
import 'package:components_project_course/src/pages/avatar_page.dart';
import 'package:components_project_course/src/pages/home_page.dart';
import 'package:components_project_course/src/pages/card_page.dart';
import 'package:components_project_course/src/pages/input_page.dart';

final _routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => HomePage(),
  'alert': (BuildContext context) => AlertPage(),
  'avatar': (BuildContext context) => AvatarPage(),
  'card': (BuildContext context) => CardPage(),
  'inputs': (BuildContext context) => InputPage()
};

Map<String, WidgetBuilder> getApplicationRoutes() {
  return _routes;
}
