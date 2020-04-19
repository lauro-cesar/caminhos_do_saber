// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AccountModel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AccountModel> _$accountModelSerializer =
    new _$AccountModelSerializer();

class _$AccountModelSerializer implements StructuredSerializer<AccountModel> {
  @override
  final Iterable<Type> types = const [AccountModel, _$AccountModel];
  @override
  final String wireName = 'AccountModel';

  @override
  Iterable<Object> serialize(Serializers serializers, AccountModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.middleName != null) {
      result
        ..add('middleName')
        ..add(serializers.serialize(object.middleName,
            specifiedType: const FullType(String)));
    }
    if (object.lastName != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(object.lastName,
            specifiedType: const FullType(String)));
    }
    if (object.accessToken != null) {
      result
        ..add('accessToken')
        ..add(serializers.serialize(object.accessToken,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AccountModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccountModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'middleName':
          result.middleName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'accessToken':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AccountModel extends AccountModel {
  @override
  final int id;
  @override
  final String middleName;
  @override
  final String lastName;
  @override
  final String accessToken;

  factory _$AccountModel([void Function(AccountModelBuilder) updates]) =>
      (new AccountModelBuilder()..update(updates)).build();

  _$AccountModel._({this.id, this.middleName, this.lastName, this.accessToken})
      : super._();

  @override
  AccountModel rebuild(void Function(AccountModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountModelBuilder toBuilder() => new AccountModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountModel &&
        id == other.id &&
        middleName == other.middleName &&
        lastName == other.lastName &&
        accessToken == other.accessToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), middleName.hashCode), lastName.hashCode),
        accessToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccountModel')
          ..add('id', id)
          ..add('middleName', middleName)
          ..add('lastName', lastName)
          ..add('accessToken', accessToken))
        .toString();
  }
}

class AccountModelBuilder
    implements Builder<AccountModel, AccountModelBuilder> {
  _$AccountModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _middleName;
  String get middleName => _$this._middleName;
  set middleName(String middleName) => _$this._middleName = middleName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _accessToken;
  String get accessToken => _$this._accessToken;
  set accessToken(String accessToken) => _$this._accessToken = accessToken;

  AccountModelBuilder();

  AccountModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _middleName = _$v.middleName;
      _lastName = _$v.lastName;
      _accessToken = _$v.accessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AccountModel;
  }

  @override
  void update(void Function(AccountModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccountModel build() {
    final _$result = _$v ??
        new _$AccountModel._(
            id: id,
            middleName: middleName,
            lastName: lastName,
            accessToken: accessToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
