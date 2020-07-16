import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_request_model.g.dart';

abstract class LoginRequestModel implements Built<LoginRequestModel, LoginRequestModelBuilder> {
  String get email;
  String get password;
  @BuiltValueField(wireName: 'grant_type')
  String get grantType;
  @BuiltValueField(wireName: 'client_id')
  String get clientId;
  @nullable
  @BuiltValueField(wireName: 'client_secret')
  String get clientSecret;
  @nullable
  @BuiltValueField(wireName: 'device_token')
  String get deviceToken;

  LoginRequestModel._();

  factory LoginRequestModel([void Function(LoginRequestModelBuilder) updates]) = _$LoginRequestModel;

  static Serializer<LoginRequestModel> get serializer => _$loginRequestModelSerializer;
}
