import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_starter/src/models/example_model.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  // TODO: add models here
  ExampleModel,
])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
