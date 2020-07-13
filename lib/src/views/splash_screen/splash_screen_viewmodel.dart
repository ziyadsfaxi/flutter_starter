import 'dart:async';

import 'package:flutter_starter/src/locator.dart';
import 'package:flutter_starter/src/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashScreenViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  SplashScreenViewModel() {
    start();
  }

  Future<void> start() async {
    Timer(Duration(seconds: 5), navigateToHomeView);
  }

  void navigateToHomeView() async {
    await _navigationService.navigateTo(Routes.homeView);
  }
}
