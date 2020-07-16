// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginRequestModel> _$loginRequestModelSerializer =
    new _$LoginRequestModelSerializer();

class _$LoginRequestModelSerializer
    implements StructuredSerializer<LoginRequestModel> {
  @override
  final Iterable<Type> types = const [LoginRequestModel, _$LoginRequestModel];
  @override
  final String wireName = 'LoginRequestModel';

  @override
  Iterable<Object> serialize(Serializers serializers, LoginRequestModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'grant_type',
      serializers.serialize(object.grantType,
          specifiedType: const FullType(String)),
      'client_id',
      serializers.serialize(object.clientId,
          specifiedType: const FullType(String)),
    ];
    if (object.clientSecret != null) {
      result
        ..add('client_secret')
        ..add(serializers.serialize(object.clientSecret,
            specifiedType: const FullType(String)));
    }
    if (object.deviceToken != null) {
      result
        ..add('device_token')
        ..add(serializers.serialize(object.deviceToken,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LoginRequestModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginRequestModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'grant_type':
          result.grantType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'client_id':
          result.clientId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'client_secret':
          result.clientSecret = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'device_token':
          result.deviceToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginRequestModel extends LoginRequestModel {
  @override
  final String email;
  @override
  final String password;
  @override
  final String grantType;
  @override
  final String clientId;
  @override
  final String clientSecret;
  @override
  final String deviceToken;

  factory _$LoginRequestModel(
          [void Function(LoginRequestModelBuilder) updates]) =>
      (new LoginRequestModelBuilder()..update(updates)).build();

  _$LoginRequestModel._(
      {this.email,
      this.password,
      this.grantType,
      this.clientId,
      this.clientSecret,
      this.deviceToken})
      : super._() {
    if (email == null) {
      throw new BuiltValueNullFieldError('LoginRequestModel', 'email');
    }
    if (password == null) {
      throw new BuiltValueNullFieldError('LoginRequestModel', 'password');
    }
    if (grantType == null) {
      throw new BuiltValueNullFieldError('LoginRequestModel', 'grantType');
    }
    if (clientId == null) {
      throw new BuiltValueNullFieldError('LoginRequestModel', 'clientId');
    }
  }

  @override
  LoginRequestModel rebuild(void Function(LoginRequestModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginRequestModelBuilder toBuilder() =>
      new LoginRequestModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginRequestModel &&
        email == other.email &&
        password == other.password &&
        grantType == other.grantType &&
        clientId == other.clientId &&
        clientSecret == other.clientSecret &&
        deviceToken == other.deviceToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, email.hashCode), password.hashCode),
                    grantType.hashCode),
                clientId.hashCode),
            clientSecret.hashCode),
        deviceToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginRequestModel')
          ..add('email', email)
          ..add('password', password)
          ..add('grantType', grantType)
          ..add('clientId', clientId)
          ..add('clientSecret', clientSecret)
          ..add('deviceToken', deviceToken))
        .toString();
  }
}

class LoginRequestModelBuilder
    implements Builder<LoginRequestModel, LoginRequestModelBuilder> {
  _$LoginRequestModel _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _grantType;
  String get grantType => _$this._grantType;
  set grantType(String grantType) => _$this._grantType = grantType;

  String _clientId;
  String get clientId => _$this._clientId;
  set clientId(String clientId) => _$this._clientId = clientId;

  String _clientSecret;
  String get clientSecret => _$this._clientSecret;
  set clientSecret(String clientSecret) => _$this._clientSecret = clientSecret;

  String _deviceToken;
  String get deviceToken => _$this._deviceToken;
  set deviceToken(String deviceToken) => _$this._deviceToken = deviceToken;

  LoginRequestModelBuilder();

  LoginRequestModelBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _password = _$v.password;
      _grantType = _$v.grantType;
      _clientId = _$v.clientId;
      _clientSecret = _$v.clientSecret;
      _deviceToken = _$v.deviceToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginRequestModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginRequestModel;
  }

  @override
  void update(void Function(LoginRequestModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginRequestModel build() {
    final _$result = _$v ??
        new _$LoginRequestModel._(
            email: email,
            password: password,
            grantType: grantType,
            clientId: clientId,
            clientSecret: clientSecret,
            deviceToken: deviceToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
