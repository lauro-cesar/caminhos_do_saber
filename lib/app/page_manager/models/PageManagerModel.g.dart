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
    final result = <Object>[
      'activePageIndex',
      serializers.serialize(object.activePageIndex,
          specifiedType: const FullType(int)),
    ];
    if (object.lastPageIndex != null) {
      result
        ..add('lastPageIndex')
        ..add(serializers.serialize(object.lastPageIndex,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  PageManagerModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PageManagerModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'activePageIndex':
          result.activePageIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'lastPageIndex':
          result.lastPageIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PageManagerModel extends PageManagerModel {
  @override
  final int activePageIndex;
  @override
  final int lastPageIndex;

  factory _$PageManagerModel(
          [void Function(PageManagerModelBuilder) updates]) =>
      (new PageManagerModelBuilder()..update(updates)).build();

  _$PageManagerModel._({this.activePageIndex, this.lastPageIndex}) : super._() {
    if (activePageIndex == null) {
      throw new BuiltValueNullFieldError('PageManagerModel', 'activePageIndex');
    }
  }

  @override
  PageManagerModel rebuild(void Function(PageManagerModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageManagerModelBuilder toBuilder() =>
      new PageManagerModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageManagerModel &&
        activePageIndex == other.activePageIndex &&
        lastPageIndex == other.lastPageIndex;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, activePageIndex.hashCode), lastPageIndex.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PageManagerModel')
          ..add('activePageIndex', activePageIndex)
          ..add('lastPageIndex', lastPageIndex))
        .toString();
  }
}

class PageManagerModelBuilder
    implements Builder<PageManagerModel, PageManagerModelBuilder> {
  _$PageManagerModel _$v;

  int _activePageIndex;
  int get activePageIndex => _$this._activePageIndex;
  set activePageIndex(int activePageIndex) =>
      _$this._activePageIndex = activePageIndex;

  int _lastPageIndex;
  int get lastPageIndex => _$this._lastPageIndex;
  set lastPageIndex(int lastPageIndex) => _$this._lastPageIndex = lastPageIndex;

  PageManagerModelBuilder();

  PageManagerModelBuilder get _$this {
    if (_$v != null) {
      _activePageIndex = _$v.activePageIndex;
      _lastPageIndex = _$v.lastPageIndex;
      _$v = null;
    }
    return this;
  }

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
    final _$result = _$v ??
        new _$PageManagerModel._(
            activePageIndex: activePageIndex, lastPageIndex: lastPageIndex);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
