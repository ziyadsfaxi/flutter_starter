import 'package:chopper/chopper.dart';
import 'package:flutter_starter/src/models/login_request_model.dart';

part 'example_api.chopper.dart';

@ChopperApi()
abstract class ExampleApiService extends ChopperService {
  @Post(path: 'login/{id}')
  Future<Response<dynamic>> login(@Body() LoginRequestModel body, @Path() String id);

  static ExampleApiService create([ChopperClient client]) => _$ExampleApiService(client);
}
