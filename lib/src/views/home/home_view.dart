import 'package:flutter/material.dart';
import 'package:flutter_starter/src/widgets/main_scaffold/main_scaffold.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => MainScaffold(
        body: Center(
          child: Text('${model.title} ${model.counter}'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: model.updateCounter,
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
