// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lista_de_compras.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListaDeCompras _$ListaDeComprasFromJson(Map<String, dynamic> json) {
  return _ListaDeComprasDefault.fromJson(json);
}

/// @nodoc
mixin _$ListaDeCompras {
  int get id => throw _privateConstructorUsedError;
  List<Produto> get produtos => throw _privateConstructorUsedError;

  /// Serializes this ListaDeCompras to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListaDeCompras
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListaDeComprasCopyWith<ListaDeCompras> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListaDeComprasCopyWith<$Res> {
  factory $ListaDeComprasCopyWith(
          ListaDeCompras value, $Res Function(ListaDeCompras) then) =
      _$ListaDeComprasCopyWithImpl<$Res, ListaDeCompras>;
  @useResult
  $Res call({int id, List<Produto> produtos});
}

/// @nodoc
class _$ListaDeComprasCopyWithImpl<$Res, $Val extends ListaDeCompras>
    implements $ListaDeComprasCopyWith<$Res> {
  _$ListaDeComprasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListaDeCompras
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? produtos = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      produtos: null == produtos
          ? _value.produtos
          : produtos // ignore: cast_nullable_to_non_nullable
              as List<Produto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListaDeComprasDefaultImplCopyWith<$Res>
    implements $ListaDeComprasCopyWith<$Res> {
  factory _$$ListaDeComprasDefaultImplCopyWith(
          _$ListaDeComprasDefaultImpl value,
          $Res Function(_$ListaDeComprasDefaultImpl) then) =
      __$$ListaDeComprasDefaultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<Produto> produtos});
}

/// @nodoc
class __$$ListaDeComprasDefaultImplCopyWithImpl<$Res>
    extends _$ListaDeComprasCopyWithImpl<$Res, _$ListaDeComprasDefaultImpl>
    implements _$$ListaDeComprasDefaultImplCopyWith<$Res> {
  __$$ListaDeComprasDefaultImplCopyWithImpl(_$ListaDeComprasDefaultImpl _value,
      $Res Function(_$ListaDeComprasDefaultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListaDeCompras
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? produtos = null,
  }) {
    return _then(_$ListaDeComprasDefaultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      produtos: null == produtos
          ? _value._produtos
          : produtos // ignore: cast_nullable_to_non_nullable
              as List<Produto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListaDeComprasDefaultImpl implements _ListaDeComprasDefault {
  const _$ListaDeComprasDefaultImpl(
      {required this.id, required final List<Produto> produtos})
      : _produtos = produtos;

  factory _$ListaDeComprasDefaultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListaDeComprasDefaultImplFromJson(json);

  @override
  final int id;
  final List<Produto> _produtos;
  @override
  List<Produto> get produtos {
    if (_produtos is EqualUnmodifiableListView) return _produtos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_produtos);
  }

  @override
  String toString() {
    return 'ListaDeCompras(id: $id, produtos: $produtos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListaDeComprasDefaultImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._produtos, _produtos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_produtos));

  /// Create a copy of ListaDeCompras
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListaDeComprasDefaultImplCopyWith<_$ListaDeComprasDefaultImpl>
      get copyWith => __$$ListaDeComprasDefaultImplCopyWithImpl<
          _$ListaDeComprasDefaultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListaDeComprasDefaultImplToJson(
      this,
    );
  }
}

abstract class _ListaDeComprasDefault implements ListaDeCompras {
  const factory _ListaDeComprasDefault(
      {required final int id,
      required final List<Produto> produtos}) = _$ListaDeComprasDefaultImpl;

  factory _ListaDeComprasDefault.fromJson(Map<String, dynamic> json) =
      _$ListaDeComprasDefaultImpl.fromJson;

  @override
  int get id;
  @override
  List<Produto> get produtos;

  /// Create a copy of ListaDeCompras
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListaDeComprasDefaultImplCopyWith<_$ListaDeComprasDefaultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
