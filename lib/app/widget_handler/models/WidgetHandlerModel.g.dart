// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WidgetHandlerModel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WidgetHandlerModel> _$widgetHandlerModelSerializer =
    new _$WidgetHandlerModelSerializer();

class _$WidgetHandlerModelSerializer
    implements StructuredSerializer<WidgetHandlerModel> {
  @override
  final Iterable<Type> types = const [WidgetHandlerModel, _$WidgetHandlerModel];
  @override
  final String wireName = 'WidgetHandlerModel';

  @override
  Iterable<Object> serialize(Serializers serializers, WidgetHandlerModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.z_index != null) {
      result
        ..add('z_index')
        ..add(serializers.serialize(object.z_index,
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
  WidgetHandlerModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WidgetHandlerModelBuilder();

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
        case 'z_index':
          result.z_index = serializers.deserialize(value,
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

class _$WidgetHandlerModel extends WidgetHandlerModel {
  @override
  final int id;
  @override
  final int z_index;
  @override
  final double x;
  @override
  final double y;
  @override
  final double w;
  @override
  final double h;

  factory _$WidgetHandlerModel(
          [void Function(WidgetHandlerModelBuilder) updates]) =>
      (new WidgetHandlerModelBuilder()..update(updates)).build();

  _$WidgetHandlerModel._(
      {this.id, this.z_index, this.x, this.y, this.w, this.h})
      : super._();

  @override
  WidgetHandlerModel rebuild(
          void Function(WidgetHandlerModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WidgetHandlerModelBuilder toBuilder() =>
      new WidgetHandlerModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WidgetHandlerModel &&
        id == other.id &&
        z_index == other.z_index &&
        x == other.x &&
        y == other.y &&
        w == other.w &&
        h == other.h;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), z_index.hashCode), x.hashCode),
                y.hashCode),
            w.hashCode),
        h.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WidgetHandlerModel')
          ..add('id', id)
          ..add('z_index', z_index)
          ..add('x', x)
          ..add('y', y)
          ..add('w', w)
          ..add('h', h))
        .toString();
  }
}

class WidgetHandlerModelBuilder
    implements Builder<WidgetHandlerModel, WidgetHandlerModelBuilder> {
  _$WidgetHandlerModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _z_index;
  int get z_index => _$this._z_index;
  set z_index(int z_index) => _$this._z_index = z_index;

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

  WidgetHandlerModelBuilder();

  WidgetHandlerModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _z_index = _$v.z_index;
      _x = _$v.x;
      _y = _$v.y;
      _w = _$v.w;
      _h = _$v.h;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WidgetHandlerModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WidgetHandlerModel;
  }

  @override
  void update(void Function(WidgetHandlerModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WidgetHandlerModel build() {
    final _$result = _$v ??
        new _$WidgetHandlerModel._(
            id: id, z_index: z_index, x: x, y: y, w: w, h: h);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
