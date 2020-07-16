import 'package:chopper/chopper.dart';
import 'package:flutter_starter/built_value/converter.dart';
import 'package:flutter_starter/src/services/api/example_api.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiService {
  final chopper = new ChopperClient(
    baseUrl: 'www.example.com/api',
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
}
