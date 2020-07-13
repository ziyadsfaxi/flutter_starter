import 'package:flutter/material.dart';
import 'package:flutter_starter/src/views/splash_screen/splash_screen_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashScreenViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
          ),
          child: Center(
            child: Text('Splash Screen'),
          ),
        ),
      ),
      viewModelBuilder: () => SplashScreenViewModel(),
    );
  }
}
