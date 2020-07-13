// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_starter/src/views/splash_screen/splash_screen_view.dart';
import 'package:flutter_starter/src/views/home/home_view.dart';

class Routes {
  static const String splashScreenView = '/';
  static const String homeView = '/home-view';
  static const all = <String>{
    splashScreenView,
    homeView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreenView, page: SplashScreenView),
    RouteDef(Routes.homeView, page: HomeView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreenView: (RouteData data) {
      var args = data.getArgs<SplashScreenViewArguments>(
          orElse: () => SplashScreenViewArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashScreenView(key: args.key),
        settings: data,
      );
    },
    HomeView: (RouteData data) {
      var args =
          data.getArgs<HomeViewArguments>(orElse: () => HomeViewArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(key: args.key),
        settings: data,
      );
    },
  };
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//SplashScreenView arguments holder class
class SplashScreenViewArguments {
  final Key key;
  SplashScreenViewArguments({this.key});
}

//HomeView arguments holder class
class HomeViewArguments {
  final Key key;
  HomeViewArguments({this.key});
}
