import 'package:global_configuration/global_configuration.dart';
import 'package:stacked/stacked.dart';

class DrawerViewModel extends BaseViewModel {
  final _title = GlobalConfiguration().getString('appName');
  String get title => _title;
}
