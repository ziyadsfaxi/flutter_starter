import 'package:flutter/material.dart';
import 'package:flutter_starter/src/views/drawer/drawer_view.dart';
import 'package:global_configuration/global_configuration.dart';

class MainScaffold extends StatelessWidget {
  final Widget body;
  final Widget floatingActionButton;

  MainScaffold({Key key, this.body, this.floatingActionButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = GlobalConfiguration().getString('appName');
    return Scaffold(
      body: body,
      floatingActionButton: floatingActionButton,
      drawer: DrawerView(),
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
