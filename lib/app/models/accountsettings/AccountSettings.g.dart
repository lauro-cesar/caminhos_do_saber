// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AccountSettings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AccountSettings> _$accountSettingsSerializer =
    new _$AccountSettingsSerializer();

class _$AccountSettingsSerializer
    implements StructuredSerializer<AccountSettings> {
  @override
  final Iterable<Type> types = const [AccountSettings, _$AccountSettings];
  @override
  final String wireName = 'AccountSettings';

  @override
  Iterable<Object> serialize(Serializers serializers, AccountSettings object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'middleName',
      serializers.serialize(object.middleName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'accessToken',
      serializers.serialize(object.accessToken,
          specifiedType: const FullType(String)),
      'userName',
      serializers.serialize(object.userName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AccountSettings deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccountSettingsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AccountSettings extends AccountSettings {
  @override
  final String firstName;
  @override
  final String middleName;
  @override
  final String lastName;
  @override
  final String accessToken;
  @override
  final String userName;

  factory _$AccountSettings([void Function(AccountSettingsBuilder) updates]) =>
      (new AccountSettingsBuilder()..update(updates)).build();

  _$AccountSettings._(
      {this.firstName,
      this.middleName,
      this.lastName,
      this.accessToken,
      this.userName})
      : super._() {
    if (firstName == null) {
      throw new BuiltValueNullFieldError('AccountSettings', 'firstName');
    }
    if (middleName == null) {
      throw new BuiltValueNullFieldError('AccountSettings', 'middleName');
    }
    if (lastName == null) {
      throw new BuiltValueNullFieldError('AccountSettings', 'lastName');
    }
    if (accessToken == null) {
      throw new BuiltValueNullFieldError('AccountSettings', 'accessToken');
    }
    if (userName == null) {
      throw new BuiltValueNullFieldError('AccountSettings', 'userName');
    }
  }

  @override
  AccountSettings rebuild(void Function(AccountSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountSettingsBuilder toBuilder() =>
      new AccountSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountSettings &&
        firstName == other.firstName &&
        middleName == other.middleName &&
        lastName == other.lastName &&
        accessToken == other.accessToken &&
        userName == other.userName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, firstName.hashCode), middleName.hashCode),
                lastName.hashCode),
            accessToken.hashCode),
        userName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccountSettings')
          ..add('firstName', firstName)
          ..add('middleName', middleName)
          ..add('lastName', lastName)
          ..add('accessToken', accessToken)
          ..add('userName', userName))
        .toString();
  }
}

class AccountSettingsBuilder
    implements Builder<AccountSettings, AccountSettingsBuilder> {
  _$AccountSettings _$v;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _middleName;
  String get middleName => _$this._middleName;
  set middleName(String middleName) => _$this._middleName = middleName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _accessToken;
  String get accessToken => _$this._accessToken;
  set accessToken(String accessToken) => _$this._accessToken = accessToken;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  AccountSettingsBuilder();

  AccountSettingsBuilder get _$this {
    if (_$v != null) {
      _firstName = _$v.firstName;
      _middleName = _$v.middleName;
      _lastName = _$v.lastName;
      _accessToken = _$v.accessToken;
      _userName = _$v.userName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountSettings other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AccountSettings;
  }

  @override
  void update(void Function(AccountSettingsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccountSettings build() {
    final _$result = _$v ??
        new _$AccountSettings._(
            firstName: firstName,
            middleName: middleName,
            lastName: lastName,
            accessToken: accessToken,
            userName: userName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
