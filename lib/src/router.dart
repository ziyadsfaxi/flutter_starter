import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_starter/src/views/home/home_view.dart';
import 'package:flutter_starter/src/views/splash_screen/splash_screen_view.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashScreenView, initial: true),
    MaterialRoute(page: HomeView),
  ],
)
class $Router {}
