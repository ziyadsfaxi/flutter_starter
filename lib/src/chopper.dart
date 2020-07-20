import 'package:chopper/chopper.dart';
import 'package:flutter_starter/built_value/converter.dart';
import 'package:flutter_starter/logger/logger.dart';
import 'package:flutter_starter/src/services/api/example_api.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

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

  ApiService() {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((rec) {
      log('${rec.level.name}: ${rec.time}: ${rec.message}', 'info');
    });
  }

  ChopperClient get api => _api;
}
