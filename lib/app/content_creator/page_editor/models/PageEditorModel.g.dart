// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PageEditorModel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PageEditorModel> _$pageEditorModelSerializer =
    new _$PageEditorModelSerializer();

class _$PageEditorModelSerializer
    implements StructuredSerializer<PageEditorModel> {
  @override
  final Iterable<Type> types = const [PageEditorModel, _$PageEditorModel];
  @override
  final String wireName = 'PageEditorModel';

  @override
  Iterable<Object> serialize(Serializers serializers, PageEditorModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.pageId != null) {
      result
        ..add('pageId')
        ..add(serializers.serialize(object.pageId,
            specifiedType: const FullType(int)));
    }
    if (object.index != null) {
      result
        ..add('index')
        ..add(serializers.serialize(object.index,
            specifiedType: const FullType(int)));
    }
    if (object.x != null) {
      result
        ..add('x')
        ..add(serializers.serialize(object.x,
            specifiedType: const FullType(double)));
    }
    if (object.y != null) {
      result
        ..add('y')
        ..add(serializers.serialize(object.y,
            specifiedType: const FullType(double)));
    }
    if (object.w != null) {
      result
        ..add('w')
        ..add(serializers.serialize(object.w,
            specifiedType: const FullType(double)));
    }
    if (object.h != null) {
      result
        ..add('h')
        ..add(serializers.serialize(object.h,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  PageEditorModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PageEditorModelBuilder();

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
        case 'pageId':
          result.pageId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'x':
          result.x = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'y':
          result.y = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'w':
          result.w = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'h':
          result.h = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$PageEditorModel extends PageEditorModel {
  @override
  final int id;
  @override
  final int pageId;
  @override
  final int index;
  @override
  final double x;
  @override
  final double y;
  @override
  final double w;
  @override
  final double h;

  factory _$PageEditorModel([void Function(PageEditorModelBuilder) updates]) =>
      (new PageEditorModelBuilder()..update(updates)).build();

  _$PageEditorModel._(
      {this.id, this.pageId, this.index, this.x, this.y, this.w, this.h})
      : super._();

  @override
  PageEditorModel rebuild(void Function(PageEditorModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageEditorModelBuilder toBuilder() =>
      new PageEditorModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageEditorModel &&
        id == other.id &&
        pageId == other.pageId &&
        index == other.index &&
        x == other.x &&
        y == other.y &&
        w == other.w &&
        h == other.h;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), pageId.hashCode),
                        index.hashCode),
                    x.hashCode),
                y.hashCode),
            w.hashCode),
        h.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PageEditorModel')
          ..add('id', id)
          ..add('pageId', pageId)
          ..add('index', index)
          ..add('x', x)
          ..add('y', y)
          ..add('w', w)
          ..add('h', h))
        .toString();
  }
}

class PageEditorModelBuilder
    implements Builder<PageEditorModel, PageEditorModelBuilder> {
  _$PageEditorModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _pageId;
  int get pageId => _$this._pageId;
  set pageId(int pageId) => _$this._pageId = pageId;

  int _index;
  int get index => _$this._index;
  set index(int index) => _$this._index = index;

  double _x;
  double get x => _$this._x;
  set x(double x) => _$this._x = x;

  double _y;
  double get y => _$this._y;
  set y(double y) => _$this._y = y;

  double _w;
  double get w => _$this._w;
  set w(double w) => _$this._w = w;

  double _h;
  double get h => _$this._h;
  set h(double h) => _$this._h = h;

  PageEditorModelBuilder();

  PageEditorModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _pageId = _$v.pageId;
      _index = _$v.index;
      _x = _$v.x;
      _y = _$v.y;
      _w = _$v.w;
      _h = _$v.h;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageEditorModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PageEditorModel;
  }

  @override
  void update(void Function(PageEditorModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PageEditorModel build() {
    final _$result = _$v ??
        new _$PageEditorModel._(
            id: id, pageId: pageId, index: index, x: x, y: y, w: w, h: h);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
