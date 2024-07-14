import 'package:flutter/material.dart';

buildMaterialPageRoute(Widget widget) =>
    MaterialPageRoute(builder: (_) => widget);

extension NavigationX on BuildContext {
  clearRouteTo(Route newRoute) {
    Navigator.pushAndRemoveUntil(this, newRoute, (route) => false);
  }

  pushRouteTo(Route newRoute) => Navigator.push(this, newRoute);

  pushReplaceRouteTo(Route newRoute) {
    Navigator.pushReplacement(this, newRoute);
  }

  popRoute({Object? value}) {
    Navigator.pop(this, value);
  }
}