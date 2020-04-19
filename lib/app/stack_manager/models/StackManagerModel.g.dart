// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StackManagerModel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StackManagerModel> _$stackManagerModelSerializer =
    new _$StackManagerModelSerializer();

class _$StackManagerModelSerializer
    implements StructuredSerializer<StackManagerModel> {
  @override
  final Iterable<Type> types = const [StackManagerModel, _$StackManagerModel];
  @override
  final String wireName = 'StackManagerModel';

  @override
  Iterable<Object> serialize(Serializers serializers, StackManagerModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'activePageIndex',
      serializers.serialize(object.activePageIndex,
          specifiedType: const FullType(int)),
    ];
    if (object.maxIndex != null) {
      result
        ..add('maxIndex')
        ..add(serializers.serialize(object.maxIndex,
            specifiedType: const FullType(int)));
    }
    if (object.lastPageIndex != null) {
      result
        ..add('lastPageIndex')
        ..add(serializers.serialize(object.lastPageIndex,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  StackManagerModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StackManagerModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'maxIndex':
          result.maxIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
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

class _$StackManagerModel extends StackManagerModel {
  @override
  final int maxIndex;
  @override
  final int activePageIndex;
  @override
  final int lastPageIndex;

  factory _$StackManagerModel(
          [void Function(StackManagerModelBuilder) updates]) =>
      (new StackManagerModelBuilder()..update(updates)).build();

  _$StackManagerModel._(
      {this.maxIndex, this.activePageIndex, this.lastPageIndex})
      : super._() {
    if (activePageIndex == null) {
      throw new BuiltValueNullFieldError(
          'StackManagerModel', 'activePageIndex');
    }
  }

  @override
  StackManagerModel rebuild(void Function(StackManagerModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackManagerModelBuilder toBuilder() =>
      new StackManagerModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackManagerModel &&
        maxIndex == other.maxIndex &&
        activePageIndex == other.activePageIndex &&
        lastPageIndex == other.lastPageIndex;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, maxIndex.hashCode), activePageIndex.hashCode),
        lastPageIndex.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StackManagerModel')
          ..add('maxIndex', maxIndex)
          ..add('activePageIndex', activePageIndex)
          ..add('lastPageIndex', lastPageIndex))
        .toString();
  }
}

class StackManagerModelBuilder
    implements Builder<StackManagerModel, StackManagerModelBuilder> {
  _$StackManagerModel _$v;

  int _maxIndex;
  int get maxIndex => _$this._maxIndex;
  set maxIndex(int maxIndex) => _$this._maxIndex = maxIndex;

  int _activePageIndex;
  int get activePageIndex => _$this._activePageIndex;
  set activePageIndex(int activePageIndex) =>
      _$this._activePageIndex = activePageIndex;

  int _lastPageIndex;
  int get lastPageIndex => _$this._lastPageIndex;
  set lastPageIndex(int lastPageIndex) => _$this._lastPageIndex = lastPageIndex;

  StackManagerModelBuilder();

  StackManagerModelBuilder get _$this {
    if (_$v != null) {
      _maxIndex = _$v.maxIndex;
      _activePageIndex = _$v.activePageIndex;
      _lastPageIndex = _$v.lastPageIndex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackManagerModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StackManagerModel;
  }

  @override
  void update(void Function(StackManagerModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StackManagerModel build() {
    final _$result = _$v ??
        new _$StackManagerModel._(
            maxIndex: maxIndex,
            activePageIndex: activePageIndex,
            lastPageIndex: lastPageIndex);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
