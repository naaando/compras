// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nfce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Nfce _$NfceFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'processed':
      return NfceProcessed.fromJson(json);
    case 'processing':
      return NfceProcessing.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Nfce',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Nfce {
  int get id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get access_key => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            String? url,
            String? access_key,
            String? company_name,
            String? issue_date,
            String? total_before_discount,
            List<NfceItem> items)
        processed,
    required TResult Function(int id, String? url, String? access_key)
        processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            String? url,
            String? access_key,
            String? company_name,
            String? issue_date,
            String? total_before_discount,
            List<NfceItem> items)?
        processed,
    TResult? Function(int id, String? url, String? access_key)? processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            String? url,
            String? access_key,
            String? company_name,
            String? issue_date,
            String? total_before_discount,
            List<NfceItem> items)?
        processed,
    TResult Function(int id, String? url, String? access_key)? processing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NfceProcessed value) processed,
    required TResult Function(NfceProcessing value) processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NfceProcessed value)? processed,
    TResult? Function(NfceProcessing value)? processing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NfceProcessed value)? processed,
    TResult Function(NfceProcessing value)? processing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Nfce to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Nfce
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NfceCopyWith<Nfce> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NfceCopyWith<$Res> {
  factory $NfceCopyWith(Nfce value, $Res Function(Nfce) then) =
      _$NfceCopyWithImpl<$Res, Nfce>;
  @useResult
  $Res call({int id, String? url, String? access_key});
}

/// @nodoc
class _$NfceCopyWithImpl<$Res, $Val extends Nfce>
    implements $NfceCopyWith<$Res> {
  _$NfceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Nfce
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = freezed,
    Object? access_key = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      access_key: freezed == access_key
          ? _value.access_key
          : access_key // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NfceProcessedImplCopyWith<$Res>
    implements $NfceCopyWith<$Res> {
  factory _$$NfceProcessedImplCopyWith(
          _$NfceProcessedImpl value, $Res Function(_$NfceProcessedImpl) then) =
      __$$NfceProcessedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? url,
      String? access_key,
      String? company_name,
      String? issue_date,
      String? total_before_discount,
      List<NfceItem> items});
}

/// @nodoc
class __$$NfceProcessedImplCopyWithImpl<$Res>
    extends _$NfceCopyWithImpl<$Res, _$NfceProcessedImpl>
    implements _$$NfceProcessedImplCopyWith<$Res> {
  __$$NfceProcessedImplCopyWithImpl(
      _$NfceProcessedImpl _value, $Res Function(_$NfceProcessedImpl) _then)
      : super(_value, _then);

  /// Create a copy of Nfce
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = freezed,
    Object? access_key = freezed,
    Object? company_name = freezed,
    Object? issue_date = freezed,
    Object? total_before_discount = freezed,
    Object? items = null,
  }) {
    return _then(_$NfceProcessedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      access_key: freezed == access_key
          ? _value.access_key
          : access_key // ignore: cast_nullable_to_non_nullable
              as String?,
      company_name: freezed == company_name
          ? _value.company_name
          : company_name // ignore: cast_nullable_to_non_nullable
              as String?,
      issue_date: freezed == issue_date
          ? _value.issue_date
          : issue_date // ignore: cast_nullable_to_non_nullable
              as String?,
      total_before_discount: freezed == total_before_discount
          ? _value.total_before_discount
          : total_before_discount // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<NfceItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NfceProcessedImpl implements NfceProcessed {
  const _$NfceProcessedImpl(
      {required this.id,
      required this.url,
      required this.access_key,
      required this.company_name,
      required this.issue_date,
      required this.total_before_discount,
      required final List<NfceItem> items,
      final String? $type})
      : _items = items,
        $type = $type ?? 'processed';

  factory _$NfceProcessedImpl.fromJson(Map<String, dynamic> json) =>
      _$$NfceProcessedImplFromJson(json);

  @override
  final int id;
  @override
  final String? url;
  @override
  final String? access_key;
  @override
  final String? company_name;
  @override
  final String? issue_date;
  @override
  final String? total_before_discount;
  final List<NfceItem> _items;
  @override
  List<NfceItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Nfce.processed(id: $id, url: $url, access_key: $access_key, company_name: $company_name, issue_date: $issue_date, total_before_discount: $total_before_discount, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NfceProcessedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.access_key, access_key) ||
                other.access_key == access_key) &&
            (identical(other.company_name, company_name) ||
                other.company_name == company_name) &&
            (identical(other.issue_date, issue_date) ||
                other.issue_date == issue_date) &&
            (identical(other.total_before_discount, total_before_discount) ||
                other.total_before_discount == total_before_discount) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      url,
      access_key,
      company_name,
      issue_date,
      total_before_discount,
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of Nfce
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NfceProcessedImplCopyWith<_$NfceProcessedImpl> get copyWith =>
      __$$NfceProcessedImplCopyWithImpl<_$NfceProcessedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            String? url,
            String? access_key,
            String? company_name,
            String? issue_date,
            String? total_before_discount,
            List<NfceItem> items)
        processed,
    required TResult Function(int id, String? url, String? access_key)
        processing,
  }) {
    return processed(id, url, access_key, company_name, issue_date,
        total_before_discount, items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            String? url,
            String? access_key,
            String? company_name,
            String? issue_date,
            String? total_before_discount,
            List<NfceItem> items)?
        processed,
    TResult? Function(int id, String? url, String? access_key)? processing,
  }) {
    return processed?.call(id, url, access_key, company_name, issue_date,
        total_before_discount, items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            String? url,
            String? access_key,
            String? company_name,
            String? issue_date,
            String? total_before_discount,
            List<NfceItem> items)?
        processed,
    TResult Function(int id, String? url, String? access_key)? processing,
    required TResult orElse(),
  }) {
    if (processed != null) {
      return processed(id, url, access_key, company_name, issue_date,
          total_before_discount, items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NfceProcessed value) processed,
    required TResult Function(NfceProcessing value) processing,
  }) {
    return processed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NfceProcessed value)? processed,
    TResult? Function(NfceProcessing value)? processing,
  }) {
    return processed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NfceProcessed value)? processed,
    TResult Function(NfceProcessing value)? processing,
    required TResult orElse(),
  }) {
    if (processed != null) {
      return processed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NfceProcessedImplToJson(
      this,
    );
  }
}

abstract class NfceProcessed implements Nfce {
  const factory NfceProcessed(
      {required final int id,
      required final String? url,
      required final String? access_key,
      required final String? company_name,
      required final String? issue_date,
      required final String? total_before_discount,
      required final List<NfceItem> items}) = _$NfceProcessedImpl;

  factory NfceProcessed.fromJson(Map<String, dynamic> json) =
      _$NfceProcessedImpl.fromJson;

  @override
  int get id;
  @override
  String? get url;
  @override
  String? get access_key;
  String? get company_name;
  String? get issue_date;
  String? get total_before_discount;
  List<NfceItem> get items;

  /// Create a copy of Nfce
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NfceProcessedImplCopyWith<_$NfceProcessedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NfceProcessingImplCopyWith<$Res>
    implements $NfceCopyWith<$Res> {
  factory _$$NfceProcessingImplCopyWith(_$NfceProcessingImpl value,
          $Res Function(_$NfceProcessingImpl) then) =
      __$$NfceProcessingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? url, String? access_key});
}

/// @nodoc
class __$$NfceProcessingImplCopyWithImpl<$Res>
    extends _$NfceCopyWithImpl<$Res, _$NfceProcessingImpl>
    implements _$$NfceProcessingImplCopyWith<$Res> {
  __$$NfceProcessingImplCopyWithImpl(
      _$NfceProcessingImpl _value, $Res Function(_$NfceProcessingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Nfce
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = freezed,
    Object? access_key = freezed,
  }) {
    return _then(_$NfceProcessingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      access_key: freezed == access_key
          ? _value.access_key
          : access_key // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NfceProcessingImpl implements NfceProcessing {
  const _$NfceProcessingImpl(
      {required this.id,
      required this.url,
      required this.access_key,
      final String? $type})
      : $type = $type ?? 'processing';

  factory _$NfceProcessingImpl.fromJson(Map<String, dynamic> json) =>
      _$$NfceProcessingImplFromJson(json);

  @override
  final int id;
  @override
  final String? url;
  @override
  final String? access_key;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Nfce.processing(id: $id, url: $url, access_key: $access_key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NfceProcessingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.access_key, access_key) ||
                other.access_key == access_key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url, access_key);

  /// Create a copy of Nfce
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NfceProcessingImplCopyWith<_$NfceProcessingImpl> get copyWith =>
      __$$NfceProcessingImplCopyWithImpl<_$NfceProcessingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            String? url,
            String? access_key,
            String? company_name,
            String? issue_date,
            String? total_before_discount,
            List<NfceItem> items)
        processed,
    required TResult Function(int id, String? url, String? access_key)
        processing,
  }) {
    return processing(id, url, access_key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            String? url,
            String? access_key,
            String? company_name,
            String? issue_date,
            String? total_before_discount,
            List<NfceItem> items)?
        processed,
    TResult? Function(int id, String? url, String? access_key)? processing,
  }) {
    return processing?.call(id, url, access_key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            String? url,
            String? access_key,
            String? company_name,
            String? issue_date,
            String? total_before_discount,
            List<NfceItem> items)?
        processed,
    TResult Function(int id, String? url, String? access_key)? processing,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(id, url, access_key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NfceProcessed value) processed,
    required TResult Function(NfceProcessing value) processing,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NfceProcessed value)? processed,
    TResult? Function(NfceProcessing value)? processing,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NfceProcessed value)? processed,
    TResult Function(NfceProcessing value)? processing,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NfceProcessingImplToJson(
      this,
    );
  }
}

abstract class NfceProcessing implements Nfce {
  const factory NfceProcessing(
      {required final int id,
      required final String? url,
      required final String? access_key}) = _$NfceProcessingImpl;

  factory NfceProcessing.fromJson(Map<String, dynamic> json) =
      _$NfceProcessingImpl.fromJson;

  @override
  int get id;
  @override
  String? get url;
  @override
  String? get access_key;

  /// Create a copy of Nfce
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NfceProcessingImplCopyWith<_$NfceProcessingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
