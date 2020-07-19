import 'package:flutter_starter/generated/l10n.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  String _title = S.current.homePage;
  String get title => _title;
  // ExampleApiService _exampleService = locator<ApiService>().getService<ExampleApiService>();

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners();
  }

  void useExampleService() async {
    // _exampleService.login(body, id);
  }
}
