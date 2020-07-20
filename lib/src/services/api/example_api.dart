import 'package:chopper/chopper.dart';
import 'package:flutter_starter/src/models/example_model.dart';
import 'package:built_collection/built_collection.dart';

part 'example_api.chopper.dart';

@ChopperApi(baseUrl: 'todos')
abstract class ExampleApiService extends ChopperService {
  @Post()
  Future<Response<dynamic>> login(@Body() ExampleModel body, @Path() String id);

  @Get()
  Future<Response<BuiltList<ExampleModel>>> getTodos();

  static ExampleApiService create([ChopperClient client]) => _$ExampleApiService(client);
}
