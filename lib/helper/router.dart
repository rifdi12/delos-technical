import 'package:delos_test/view/home/home_detail_view.dart';
import 'package:delos_test/view/home/home_view.dart';
import 'package:flutter/material.dart';

route() {
  return <String, WidgetBuilder>{
    '/home': (context) => const HomeView(),
    '/home/detail': (context) => const HomeDetailView(),
  };
}
