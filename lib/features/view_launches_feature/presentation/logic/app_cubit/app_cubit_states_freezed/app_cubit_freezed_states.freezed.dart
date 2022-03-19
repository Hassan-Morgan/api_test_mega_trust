// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_cubit_freezed_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppCubitStatesTearOff {
  const _$AppCubitStatesTearOff();

  _initial initial() {
    return const _initial();
  }

  _loading loading() {
    return const _loading();
  }

  _error error(String error) {
    return _error(
      error,
    );
  }

  _success success(List<LaunchEntity> launches) {
    return _success(
      launches,
    );
  }
}

/// @nodoc
const $AppCubitStates = _$AppCubitStatesTearOff();

/// @nodoc
mixin _$AppCubitStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<LaunchEntity> launches) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<LaunchEntity> launches)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<LaunchEntity> launches)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppCubitStatesCopyWith<$Res> {
  factory $AppCubitStatesCopyWith(
          AppCubitStates value, $Res Function(AppCubitStates) then) =
      _$AppCubitStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppCubitStatesCopyWithImpl<$Res>
    implements $AppCubitStatesCopyWith<$Res> {
  _$AppCubitStatesCopyWithImpl(this._value, this._then);

  final AppCubitStates _value;
  // ignore: unused_field
  final $Res Function(AppCubitStates) _then;
}

/// @nodoc
abstract class _$initialCopyWith<$Res> {
  factory _$initialCopyWith(_initial value, $Res Function(_initial) then) =
      __$initialCopyWithImpl<$Res>;
}

/// @nodoc
class __$initialCopyWithImpl<$Res> extends _$AppCubitStatesCopyWithImpl<$Res>
    implements _$initialCopyWith<$Res> {
  __$initialCopyWithImpl(_initial _value, $Res Function(_initial) _then)
      : super(_value, (v) => _then(v as _initial));

  @override
  _initial get _value => super._value as _initial;
}

/// @nodoc

class _$_initial implements _initial {
  const _$_initial();

  @override
  String toString() {
    return 'AppCubitStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<LaunchEntity> launches) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<LaunchEntity> launches)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<LaunchEntity> launches)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _initial implements AppCubitStates {
  const factory _initial() = _$_initial;
}

/// @nodoc
abstract class _$loadingCopyWith<$Res> {
  factory _$loadingCopyWith(_loading value, $Res Function(_loading) then) =
      __$loadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$loadingCopyWithImpl<$Res> extends _$AppCubitStatesCopyWithImpl<$Res>
    implements _$loadingCopyWith<$Res> {
  __$loadingCopyWithImpl(_loading _value, $Res Function(_loading) _then)
      : super(_value, (v) => _then(v as _loading));

  @override
  _loading get _value => super._value as _loading;
}

/// @nodoc

class _$_loading implements _loading {
  const _$_loading();

  @override
  String toString() {
    return 'AppCubitStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<LaunchEntity> launches) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<LaunchEntity> launches)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<LaunchEntity> launches)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements AppCubitStates {
  const factory _loading() = _$_loading;
}

/// @nodoc
abstract class _$errorCopyWith<$Res> {
  factory _$errorCopyWith(_error value, $Res Function(_error) then) =
      __$errorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$errorCopyWithImpl<$Res> extends _$AppCubitStatesCopyWithImpl<$Res>
    implements _$errorCopyWith<$Res> {
  __$errorCopyWithImpl(_error _value, $Res Function(_error) _then)
      : super(_value, (v) => _then(v as _error));

  @override
  _error get _value => super._value as _error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_error implements _error {
  const _$_error(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AppCubitStates.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$errorCopyWith<_error> get copyWith =>
      __$errorCopyWithImpl<_error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<LaunchEntity> launches) success,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<LaunchEntity> launches)? success,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<LaunchEntity> launches)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error implements AppCubitStates {
  const factory _error(String error) = _$_error;

  String get error;
  @JsonKey(ignore: true)
  _$errorCopyWith<_error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$successCopyWith<$Res> {
  factory _$successCopyWith(_success value, $Res Function(_success) then) =
      __$successCopyWithImpl<$Res>;
  $Res call({List<LaunchEntity> launches});
}

/// @nodoc
class __$successCopyWithImpl<$Res> extends _$AppCubitStatesCopyWithImpl<$Res>
    implements _$successCopyWith<$Res> {
  __$successCopyWithImpl(_success _value, $Res Function(_success) _then)
      : super(_value, (v) => _then(v as _success));

  @override
  _success get _value => super._value as _success;

  @override
  $Res call({
    Object? launches = freezed,
  }) {
    return _then(_success(
      launches == freezed
          ? _value.launches
          : launches // ignore: cast_nullable_to_non_nullable
              as List<LaunchEntity>,
    ));
  }
}

/// @nodoc

class _$_success implements _success {
  const _$_success(this.launches);

  @override
  final List<LaunchEntity> launches;

  @override
  String toString() {
    return 'AppCubitStates.success(launches: $launches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _success &&
            const DeepCollectionEquality().equals(other.launches, launches));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(launches));

  @JsonKey(ignore: true)
  @override
  _$successCopyWith<_success> get copyWith =>
      __$successCopyWithImpl<_success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<LaunchEntity> launches) success,
  }) {
    return success(launches);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<LaunchEntity> launches)? success,
  }) {
    return success?.call(launches);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<LaunchEntity> launches)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(launches);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_error value) error,
    required TResult Function(_success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_error value)? error,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success implements AppCubitStates {
  const factory _success(List<LaunchEntity> launches) = _$_success;

  List<LaunchEntity> get launches;
  @JsonKey(ignore: true)
  _$successCopyWith<_success> get copyWith =>
      throw _privateConstructorUsedError;
}
