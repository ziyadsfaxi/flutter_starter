import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_starter/logger/logger.dart';
import 'package:flutter_starter/src/locator.dart';
import 'package:flutter_starter/src/router.gr.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:stacked_services/stacked_services.dart';

import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGlobalConfig();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      // change locale from here
      // hint: use ValueListenableBuilder to change this value dynamically.
      locale: Locale('en'),
      initialRoute: Routes.splashScreenView,
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

Future<void> setupGlobalConfig() async {
  try {
    /**
     * change this var to change the environment.
     * exmp. development or production
     */
    final _env = 'example';

    await GlobalConfiguration().loadFromPath('lib/src/config/$_env.config.json');
    log('ENVIRONEMENT: $_env', 'info');
  } catch (e) {
    error(e);
    throw e;
  }
}
