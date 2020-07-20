// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExampleModel> _$exampleModelSerializer =
    new _$ExampleModelSerializer();

class _$ExampleModelSerializer implements StructuredSerializer<ExampleModel> {
  @override
  final Iterable<Type> types = const [ExampleModel, _$ExampleModel];
  @override
  final String wireName = 'ExampleModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ExampleModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'userId',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'completed',
      serializers.serialize(object.completed,
          specifiedType: const FullType(bool)),
    ];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ExampleModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExampleModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'completed':
          result.completed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ExampleModel extends ExampleModel {
  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;
  @override
  final bool completed;

  factory _$ExampleModel([void Function(ExampleModelBuilder) updates]) =>
      (new ExampleModelBuilder()..update(updates)).build();

  _$ExampleModel._({this.userId, this.id, this.title, this.completed})
      : super._() {
    if (userId == null) {
      throw new BuiltValueNullFieldError('ExampleModel', 'userId');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('ExampleModel', 'id');
    }
    if (completed == null) {
      throw new BuiltValueNullFieldError('ExampleModel', 'completed');
    }
  }

  @override
  ExampleModel rebuild(void Function(ExampleModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExampleModelBuilder toBuilder() => new ExampleModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExampleModel &&
        userId == other.userId &&
        id == other.id &&
        title == other.title &&
        completed == other.completed;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, userId.hashCode), id.hashCode), title.hashCode),
        completed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExampleModel')
          ..add('userId', userId)
          ..add('id', id)
          ..add('title', title)
          ..add('completed', completed))
        .toString();
  }
}

class ExampleModelBuilder
    implements Builder<ExampleModel, ExampleModelBuilder> {
  _$ExampleModel _$v;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  bool _completed;
  bool get completed => _$this._completed;
  set completed(bool completed) => _$this._completed = completed;

  ExampleModelBuilder();

  ExampleModelBuilder get _$this {
    if (_$v != null) {
      _userId = _$v.userId;
      _id = _$v.id;
      _title = _$v.title;
      _completed = _$v.completed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExampleModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ExampleModel;
  }

  @override
  void update(void Function(ExampleModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExampleModel build() {
    final _$result = _$v ??
        new _$ExampleModel._(
            userId: userId, id: id, title: title, completed: completed);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
