// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Document.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Document> _$documentSerializer = new _$DocumentSerializer();

class _$DocumentSerializer implements StructuredSerializer<Document> {
  @override
  final Iterable<Type> types = const [Document, _$Document];
  @override
  final String wireName = 'Document';

  @override
  Iterable<Object> serialize(Serializers serializers, Document object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'userName',
      serializers.serialize(object.userName,
          specifiedType: const FullType(String)),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Document deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DocumentBuilder();

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
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Document extends Document {
  @override
  final int id;
  @override
  final String userName;

  factory _$Document([void Function(DocumentBuilder) updates]) =>
      (new DocumentBuilder()..update(updates)).build();

  _$Document._({this.id, this.userName}) : super._() {
    if (userName == null) {
      throw new BuiltValueNullFieldError('Document', 'userName');
    }
  }

  @override
  Document rebuild(void Function(DocumentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentBuilder toBuilder() => new DocumentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Document && id == other.id && userName == other.userName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), userName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Document')
          ..add('id', id)
          ..add('userName', userName))
        .toString();
  }
}

class DocumentBuilder implements Builder<Document, DocumentBuilder> {
  _$Document _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  DocumentBuilder();

  DocumentBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _userName = _$v.userName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Document other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Document;
  }

  @override
  void update(void Function(DocumentBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Document build() {
    final _$result = _$v ?? new _$Document._(id: id, userName: userName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
