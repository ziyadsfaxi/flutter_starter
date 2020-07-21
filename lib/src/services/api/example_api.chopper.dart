// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ExampleApiService extends ExampleApiService {
  _$ExampleApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ExampleApiService;

  @override
  Future<Response<ExampleModel>> createTodo(ExampleModel body) {
    final $url = 'todos';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ExampleModel, ExampleModel>($request);
  }

  @override
  Future<Response<BuiltList<ExampleModel>>> getTodos() {
    final $url = 'todos';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<ExampleModel>, ExampleModel>($request);
  }
}
