// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nfces_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NfcesFilter {
  Visualizacao get visualizacao => throw _privateConstructorUsedError;
  Nfce? get nfce => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NfcesFilterCopyWith<NfcesFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NfcesFilterCopyWith<$Res> {
  factory $NfcesFilterCopyWith(
          NfcesFilter value, $Res Function(NfcesFilter) then) =
      _$NfcesFilterCopyWithImpl<$Res, NfcesFilter>;
  @useResult
  $Res call({Visualizacao visualizacao, Nfce? nfce});

  $NfceCopyWith<$Res>? get nfce;
}

/// @nodoc
class _$NfcesFilterCopyWithImpl<$Res, $Val extends NfcesFilter>
    implements $NfcesFilterCopyWith<$Res> {
  _$NfcesFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visualizacao = null,
    Object? nfce = freezed,
  }) {
    return _then(_value.copyWith(
      visualizacao: null == visualizacao
          ? _value.visualizacao
          : visualizacao // ignore: cast_nullable_to_non_nullable
              as Visualizacao,
      nfce: freezed == nfce
          ? _value.nfce
          : nfce // ignore: cast_nullable_to_non_nullable
              as Nfce?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NfceCopyWith<$Res>? get nfce {
    if (_value.nfce == null) {
      return null;
    }

    return $NfceCopyWith<$Res>(_value.nfce!, (value) {
      return _then(_value.copyWith(nfce: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NfcesFilterImplCopyWith<$Res>
    implements $NfcesFilterCopyWith<$Res> {
  factory _$$NfcesFilterImplCopyWith(
          _$NfcesFilterImpl value, $Res Function(_$NfcesFilterImpl) then) =
      __$$NfcesFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Visualizacao visualizacao, Nfce? nfce});

  @override
  $NfceCopyWith<$Res>? get nfce;
}

/// @nodoc
class __$$NfcesFilterImplCopyWithImpl<$Res>
    extends _$NfcesFilterCopyWithImpl<$Res, _$NfcesFilterImpl>
    implements _$$NfcesFilterImplCopyWith<$Res> {
  __$$NfcesFilterImplCopyWithImpl(
      _$NfcesFilterImpl _value, $Res Function(_$NfcesFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visualizacao = null,
    Object? nfce = freezed,
  }) {
    return _then(_$NfcesFilterImpl(
      visualizacao: null == visualizacao
          ? _value.visualizacao
          : visualizacao // ignore: cast_nullable_to_non_nullable
              as Visualizacao,
      nfce: freezed == nfce
          ? _value.nfce
          : nfce // ignore: cast_nullable_to_non_nullable
              as Nfce?,
    ));
  }
}

/// @nodoc

class _$NfcesFilterImpl implements _NfcesFilter {
  const _$NfcesFilterImpl({required this.visualizacao, this.nfce});

  @override
  final Visualizacao visualizacao;
  @override
  final Nfce? nfce;

  @override
  String toString() {
    return 'NfcesFilter(visualizacao: $visualizacao, nfce: $nfce)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NfcesFilterImpl &&
            (identical(other.visualizacao, visualizacao) ||
                other.visualizacao == visualizacao) &&
            (identical(other.nfce, nfce) || other.nfce == nfce));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visualizacao, nfce);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NfcesFilterImplCopyWith<_$NfcesFilterImpl> get copyWith =>
      __$$NfcesFilterImplCopyWithImpl<_$NfcesFilterImpl>(this, _$identity);
}

abstract class _NfcesFilter implements NfcesFilter {
  const factory _NfcesFilter(
      {required final Visualizacao visualizacao,
      final Nfce? nfce}) = _$NfcesFilterImpl;

  @override
  Visualizacao get visualizacao;
  @override
  Nfce? get nfce;
  @override
  @JsonKey(ignore: true)
  _$$NfcesFilterImplCopyWith<_$NfcesFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NfcesState {
  NfcesFilter get filter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NfcesFilter filter) loading,
    required TResult Function(NfcesFilter filter) offline,
    required TResult Function(List<Nfce> nfces, NfcesFilter filter) data,
    required TResult Function(String errorMessage, NfcesFilter filter) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NfcesFilter filter)? loading,
    TResult? Function(NfcesFilter filter)? offline,
    TResult? Function(List<Nfce> nfces, NfcesFilter filter)? data,
    TResult? Function(String errorMessage, NfcesFilter filter)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NfcesFilter filter)? loading,
    TResult Function(NfcesFilter filter)? offline,
    TResult Function(List<Nfce> nfces, NfcesFilter filter)? data,
    TResult Function(String errorMessage, NfcesFilter filter)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Data value)? data,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NfcesStateCopyWith<NfcesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NfcesStateCopyWith<$Res> {
  factory $NfcesStateCopyWith(
          NfcesState value, $Res Function(NfcesState) then) =
      _$NfcesStateCopyWithImpl<$Res, NfcesState>;
  @useResult
  $Res call({NfcesFilter filter});

  $NfcesFilterCopyWith<$Res> get filter;
}

/// @nodoc
class _$NfcesStateCopyWithImpl<$Res, $Val extends NfcesState>
    implements $NfcesStateCopyWith<$Res> {
  _$NfcesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_value.copyWith(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as NfcesFilter,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NfcesFilterCopyWith<$Res> get filter {
    return $NfcesFilterCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $NfcesStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NfcesFilter filter});

  @override
  $NfcesFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$NfcesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$LoadingImpl(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as NfcesFilter,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(
      {this.filter = const NfcesFilter(visualizacao: Visualizacao.notas)});

  @override
  @JsonKey()
  final NfcesFilter filter;

  @override
  String toString() {
    return 'NfcesState.loading(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NfcesFilter filter) loading,
    required TResult Function(NfcesFilter filter) offline,
    required TResult Function(List<Nfce> nfces, NfcesFilter filter) data,
    required TResult Function(String errorMessage, NfcesFilter filter) error,
  }) {
    return loading(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NfcesFilter filter)? loading,
    TResult? Function(NfcesFilter filter)? offline,
    TResult? Function(List<Nfce> nfces, NfcesFilter filter)? data,
    TResult? Function(String errorMessage, NfcesFilter filter)? error,
  }) {
    return loading?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NfcesFilter filter)? loading,
    TResult Function(NfcesFilter filter)? offline,
    TResult Function(List<Nfce> nfces, NfcesFilter filter)? data,
    TResult Function(String errorMessage, NfcesFilter filter)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Data value)? data,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NfcesState {
  const factory _Loading({final NfcesFilter filter}) = _$LoadingImpl;

  @override
  NfcesFilter get filter;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OfflineImplCopyWith<$Res>
    implements $NfcesStateCopyWith<$Res> {
  factory _$$OfflineImplCopyWith(
          _$OfflineImpl value, $Res Function(_$OfflineImpl) then) =
      __$$OfflineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NfcesFilter filter});

  @override
  $NfcesFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$OfflineImplCopyWithImpl<$Res>
    extends _$NfcesStateCopyWithImpl<$Res, _$OfflineImpl>
    implements _$$OfflineImplCopyWith<$Res> {
  __$$OfflineImplCopyWithImpl(
      _$OfflineImpl _value, $Res Function(_$OfflineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$OfflineImpl(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as NfcesFilter,
    ));
  }
}

/// @nodoc

class _$OfflineImpl implements _Offline {
  const _$OfflineImpl(
      {this.filter = const NfcesFilter(visualizacao: Visualizacao.notas)});

  @override
  @JsonKey()
  final NfcesFilter filter;

  @override
  String toString() {
    return 'NfcesState.offline(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineImplCopyWith<_$OfflineImpl> get copyWith =>
      __$$OfflineImplCopyWithImpl<_$OfflineImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NfcesFilter filter) loading,
    required TResult Function(NfcesFilter filter) offline,
    required TResult Function(List<Nfce> nfces, NfcesFilter filter) data,
    required TResult Function(String errorMessage, NfcesFilter filter) error,
  }) {
    return offline(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NfcesFilter filter)? loading,
    TResult? Function(NfcesFilter filter)? offline,
    TResult? Function(List<Nfce> nfces, NfcesFilter filter)? data,
    TResult? Function(String errorMessage, NfcesFilter filter)? error,
  }) {
    return offline?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NfcesFilter filter)? loading,
    TResult Function(NfcesFilter filter)? offline,
    TResult Function(List<Nfce> nfces, NfcesFilter filter)? data,
    TResult Function(String errorMessage, NfcesFilter filter)? error,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Data value)? data,
    TResult? Function(_Error value)? error,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class _Offline implements NfcesState {
  const factory _Offline({final NfcesFilter filter}) = _$OfflineImpl;

  @override
  NfcesFilter get filter;
  @override
  @JsonKey(ignore: true)
  _$$OfflineImplCopyWith<_$OfflineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $NfcesStateCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Nfce> nfces, NfcesFilter filter});

  @override
  $NfcesFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$NfcesStateCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nfces = null,
    Object? filter = null,
  }) {
    return _then(_$DataImpl(
      nfces: null == nfces
          ? _value._nfces
          : nfces // ignore: cast_nullable_to_non_nullable
              as List<Nfce>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as NfcesFilter,
    ));
  }
}

/// @nodoc

class _$DataImpl implements _Data {
  const _$DataImpl({required final List<Nfce> nfces, required this.filter})
      : _nfces = nfces;

  final List<Nfce> _nfces;
  @override
  List<Nfce> get nfces {
    if (_nfces is EqualUnmodifiableListView) return _nfces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nfces);
  }

  @override
  final NfcesFilter filter;

  @override
  String toString() {
    return 'NfcesState.data(nfces: $nfces, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other._nfces, _nfces) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_nfces), filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NfcesFilter filter) loading,
    required TResult Function(NfcesFilter filter) offline,
    required TResult Function(List<Nfce> nfces, NfcesFilter filter) data,
    required TResult Function(String errorMessage, NfcesFilter filter) error,
  }) {
    return data(nfces, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NfcesFilter filter)? loading,
    TResult? Function(NfcesFilter filter)? offline,
    TResult? Function(List<Nfce> nfces, NfcesFilter filter)? data,
    TResult? Function(String errorMessage, NfcesFilter filter)? error,
  }) {
    return data?.call(nfces, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NfcesFilter filter)? loading,
    TResult Function(NfcesFilter filter)? offline,
    TResult Function(List<Nfce> nfces, NfcesFilter filter)? data,
    TResult Function(String errorMessage, NfcesFilter filter)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(nfces, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Data value)? data,
    TResult? Function(_Error value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements NfcesState {
  const factory _Data(
      {required final List<Nfce> nfces,
      required final NfcesFilter filter}) = _$DataImpl;

  List<Nfce> get nfces;
  @override
  NfcesFilter get filter;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> implements $NfcesStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMessage, NfcesFilter filter});

  @override
  $NfcesFilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$NfcesStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? filter = null,
  }) {
    return _then(_$ErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as NfcesFilter,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.errorMessage, {required this.filter});

  @override
  final String errorMessage;
  @override
  final NfcesFilter filter;

  @override
  String toString() {
    return 'NfcesState.error(errorMessage: $errorMessage, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NfcesFilter filter) loading,
    required TResult Function(NfcesFilter filter) offline,
    required TResult Function(List<Nfce> nfces, NfcesFilter filter) data,
    required TResult Function(String errorMessage, NfcesFilter filter) error,
  }) {
    return error(errorMessage, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NfcesFilter filter)? loading,
    TResult? Function(NfcesFilter filter)? offline,
    TResult? Function(List<Nfce> nfces, NfcesFilter filter)? data,
    TResult? Function(String errorMessage, NfcesFilter filter)? error,
  }) {
    return error?.call(errorMessage, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NfcesFilter filter)? loading,
    TResult Function(NfcesFilter filter)? offline,
    TResult Function(List<Nfce> nfces, NfcesFilter filter)? data,
    TResult Function(String errorMessage, NfcesFilter filter)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Data value)? data,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Offline value)? offline,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements NfcesState {
  const factory _Error(final String errorMessage,
      {required final NfcesFilter filter}) = _$ErrorImpl;

  String get errorMessage;
  @override
  NfcesFilter get filter;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
