// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'produto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Produto _$ProdutoFromJson(Map<String, dynamic> json) {
  return _ProdutoDefault.fromJson(json);
}

/// @nodoc
mixin _$Produto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProdutoCopyWith<Produto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProdutoCopyWith<$Res> {
  factory $ProdutoCopyWith(Produto value, $Res Function(Produto) then) =
      _$ProdutoCopyWithImpl<$Res, Produto>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$ProdutoCopyWithImpl<$Res, $Val extends Produto>
    implements $ProdutoCopyWith<$Res> {
  _$ProdutoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProdutoDefaultImplCopyWith<$Res>
    implements $ProdutoCopyWith<$Res> {
  factory _$$ProdutoDefaultImplCopyWith(_$ProdutoDefaultImpl value,
          $Res Function(_$ProdutoDefaultImpl) then) =
      __$$ProdutoDefaultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$ProdutoDefaultImplCopyWithImpl<$Res>
    extends _$ProdutoCopyWithImpl<$Res, _$ProdutoDefaultImpl>
    implements _$$ProdutoDefaultImplCopyWith<$Res> {
  __$$ProdutoDefaultImplCopyWithImpl(
      _$ProdutoDefaultImpl _value, $Res Function(_$ProdutoDefaultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ProdutoDefaultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProdutoDefaultImpl implements _ProdutoDefault {
  const _$ProdutoDefaultImpl({required this.id, required this.name});

  factory _$ProdutoDefaultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProdutoDefaultImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Produto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProdutoDefaultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProdutoDefaultImplCopyWith<_$ProdutoDefaultImpl> get copyWith =>
      __$$ProdutoDefaultImplCopyWithImpl<_$ProdutoDefaultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProdutoDefaultImplToJson(
      this,
    );
  }
}

abstract class _ProdutoDefault implements Produto {
  const factory _ProdutoDefault(
      {required final int id,
      required final String name}) = _$ProdutoDefaultImpl;

  factory _ProdutoDefault.fromJson(Map<String, dynamic> json) =
      _$ProdutoDefaultImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ProdutoDefaultImplCopyWith<_$ProdutoDefaultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
