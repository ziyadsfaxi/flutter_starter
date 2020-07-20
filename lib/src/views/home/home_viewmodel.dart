import 'package:flutter_starter/generated/l10n.dart';
import 'package:flutter_starter/logger/logger.dart';
import 'package:flutter_starter/src/locator.dart';
import 'package:flutter_starter/src/models/example_model.dart';
import 'package:flutter_starter/src/services/example_service.dart';
import 'package:stacked/stacked.dart';
import 'package:built_collection/built_collection.dart';

class HomeViewModel extends BaseViewModel {
  String _title = S.current.homePage;
  String get title => _title;
  BuiltList<ExampleModel> _todos;
  BuiltList<ExampleModel> get todos => _todos;
  ExampleService _exampleService = locator<ExampleService>();

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners();
  }

  void getTodos() async {
    _todos = await _exampleService.getTodos();
    log(_todos.first);
    notifyListeners();
  }
}
