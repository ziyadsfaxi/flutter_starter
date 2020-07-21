import 'package:flutter_starter/src/chopper.dart';
import 'package:flutter_starter/src/locator.dart';
import 'package:flutter_starter/src/models/example_model.dart';
import 'package:flutter_starter/src/services/api/example_api.dart';
import 'package:built_collection/built_collection.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ExampleService {
  BuiltList<ExampleModel> todos;

  Future<ExampleModel> createTodo(ExampleModel todo) async {
    final result = await locator<ApiService>().api.getService<ExampleApiService>().createTodo(todo);

    return result.body;
  }

  Future<BuiltList<ExampleModel>> getTodos() async {
    final result = await locator<ApiService>().api.getService<ExampleApiService>().getTodos();

    todos = result.body;

    return todos;
  }
}
