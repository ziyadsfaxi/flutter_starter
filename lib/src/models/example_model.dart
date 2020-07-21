import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'example_model.g.dart';

abstract class ExampleModel implements Built<ExampleModel, ExampleModelBuilder> {
  int get userId;
  @nullable
  int get id;
  @nullable
  String get title;
  bool get completed;

  ExampleModel._();

  factory ExampleModel([void Function(ExampleModelBuilder) updates]) = _$ExampleModel;

  static Serializer<ExampleModel> get serializer => _$exampleModelSerializer;
}
