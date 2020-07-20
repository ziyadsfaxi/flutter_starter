import 'package:chopper/chopper.dart';
import 'package:flutter_starter/built_value/converter.dart';
import 'package:flutter_starter/src/services/api/example_api.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiService {
  static final _api = new ChopperClient(
    baseUrl: 'https://jsonplaceholder.typicode.com/',
    services: [
      ExampleApiService.create(),
    ],
    interceptors: [
      HttpLoggingInterceptor(),
      // HandleResponseError(),
    ],
    converter: BuiltValueConverter(),
    errorConverter: JsonConverter(),
  );

  factory ApiService() {
    return _chopper;
  }

  ChopperClient get api => _api;
}
