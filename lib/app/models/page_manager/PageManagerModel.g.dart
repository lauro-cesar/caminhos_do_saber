// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PageManagerModel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PageManagerModel> _$pageManagerModelSerializer =
    new _$PageManagerModelSerializer();

class _$PageManagerModelSerializer
    implements StructuredSerializer<PageManagerModel> {
  @override
  final Iterable<Type> types = const [PageManagerModel, _$PageManagerModel];
  @override
  final String wireName = 'PageManagerModel';

  @override
  Iterable<Object> serialize(Serializers serializers, PageManagerModel object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  PageManagerModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new PageManagerModelBuilder().build();
  }
}

class _$PageManagerModel extends PageManagerModel {
  factory _$PageManagerModel(
          [void Function(PageManagerModelBuilder) updates]) =>
      (new PageManagerModelBuilder()..update(updates)).build();

  _$PageManagerModel._() : super._();

  @override
  PageManagerModel rebuild(void Function(PageManagerModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageManagerModelBuilder toBuilder() =>
      new PageManagerModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageManagerModel;
  }

  @override
  int get hashCode {
    return 121157002;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('PageManagerModel').toString();
  }
}

class PageManagerModelBuilder
    implements Builder<PageManagerModel, PageManagerModelBuilder> {
  _$PageManagerModel _$v;

  PageManagerModelBuilder();

  @override
  void replace(PageManagerModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PageManagerModel;
  }

  @override
  void update(void Function(PageManagerModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PageManagerModel build() {
    final _$result = _$v ?? new _$PageManagerModel._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
