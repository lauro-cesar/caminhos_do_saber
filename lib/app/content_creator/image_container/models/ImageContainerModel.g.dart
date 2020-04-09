// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ImageContainerModel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImageContainerModel> _$imageContainerModelSerializer =
    new _$ImageContainerModelSerializer();

class _$ImageContainerModelSerializer
    implements StructuredSerializer<ImageContainerModel> {
  @override
  final Iterable<Type> types = const [
    ImageContainerModel,
    _$ImageContainerModel
  ];
  @override
  final String wireName = 'ImageContainerModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ImageContainerModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
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
  ImageContainerModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageContainerModelBuilder();

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

class _$ImageContainerModel extends ImageContainerModel {
  @override
  final int id;
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

  factory _$ImageContainerModel(
          [void Function(ImageContainerModelBuilder) updates]) =>
      (new ImageContainerModelBuilder()..update(updates)).build();

  _$ImageContainerModel._({this.id, this.index, this.x, this.y, this.w, this.h})
      : super._();

  @override
  ImageContainerModel rebuild(
          void Function(ImageContainerModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageContainerModelBuilder toBuilder() =>
      new ImageContainerModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageContainerModel &&
        id == other.id &&
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
            $jc($jc($jc($jc(0, id.hashCode), index.hashCode), x.hashCode),
                y.hashCode),
            w.hashCode),
        h.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ImageContainerModel')
          ..add('id', id)
          ..add('index', index)
          ..add('x', x)
          ..add('y', y)
          ..add('w', w)
          ..add('h', h))
        .toString();
  }
}

class ImageContainerModelBuilder
    implements Builder<ImageContainerModel, ImageContainerModelBuilder> {
  _$ImageContainerModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

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

  ImageContainerModelBuilder();

  ImageContainerModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
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
  void replace(ImageContainerModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ImageContainerModel;
  }

  @override
  void update(void Function(ImageContainerModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ImageContainerModel build() {
    final _$result = _$v ??
        new _$ImageContainerModel._(
            id: id, index: index, x: x, y: y, w: w, h: h);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
