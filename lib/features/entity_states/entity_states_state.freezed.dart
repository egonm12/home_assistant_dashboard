// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_states_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EntityStatesStateTearOff {
  const _$EntityStatesStateTearOff();

  _EntityStatesStateInitial initial() {
    return const _EntityStatesStateInitial();
  }

  _EntityStatesStateInProgress inProgress() {
    return const _EntityStatesStateInProgress();
  }

  _EntityStatesStateSuccess success(List<EntityStateModel> entityStates) {
    return _EntityStatesStateSuccess(
      entityStates,
    );
  }

  _EntityStatesStateError error(String error) {
    return _EntityStatesStateError(
      error,
    );
  }
}

/// @nodoc
const $EntityStatesState = _$EntityStatesStateTearOff();

/// @nodoc
mixin _$EntityStatesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<EntityStateModel> entityStates) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<EntityStateModel> entityStates)? success,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<EntityStateModel> entityStates)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EntityStatesStateInitial value) initial,
    required TResult Function(_EntityStatesStateInProgress value) inProgress,
    required TResult Function(_EntityStatesStateSuccess value) success,
    required TResult Function(_EntityStatesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EntityStatesStateInitial value)? initial,
    TResult Function(_EntityStatesStateInProgress value)? inProgress,
    TResult Function(_EntityStatesStateSuccess value)? success,
    TResult Function(_EntityStatesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EntityStatesStateInitial value)? initial,
    TResult Function(_EntityStatesStateInProgress value)? inProgress,
    TResult Function(_EntityStatesStateSuccess value)? success,
    TResult Function(_EntityStatesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityStatesStateCopyWith<$Res> {
  factory $EntityStatesStateCopyWith(
          EntityStatesState value, $Res Function(EntityStatesState) then) =
      _$EntityStatesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EntityStatesStateCopyWithImpl<$Res>
    implements $EntityStatesStateCopyWith<$Res> {
  _$EntityStatesStateCopyWithImpl(this._value, this._then);

  final EntityStatesState _value;
  // ignore: unused_field
  final $Res Function(EntityStatesState) _then;
}

/// @nodoc
abstract class _$EntityStatesStateInitialCopyWith<$Res> {
  factory _$EntityStatesStateInitialCopyWith(_EntityStatesStateInitial value,
          $Res Function(_EntityStatesStateInitial) then) =
      __$EntityStatesStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$EntityStatesStateInitialCopyWithImpl<$Res>
    extends _$EntityStatesStateCopyWithImpl<$Res>
    implements _$EntityStatesStateInitialCopyWith<$Res> {
  __$EntityStatesStateInitialCopyWithImpl(_EntityStatesStateInitial _value,
      $Res Function(_EntityStatesStateInitial) _then)
      : super(_value, (v) => _then(v as _EntityStatesStateInitial));

  @override
  _EntityStatesStateInitial get _value =>
      super._value as _EntityStatesStateInitial;
}

/// @nodoc

class _$_EntityStatesStateInitial implements _EntityStatesStateInitial {
  const _$_EntityStatesStateInitial();

  @override
  String toString() {
    return 'EntityStatesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EntityStatesStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<EntityStateModel> entityStates) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<EntityStateModel> entityStates)? success,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<EntityStateModel> entityStates)? success,
    TResult Function(String error)? error,
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
    required TResult Function(_EntityStatesStateInitial value) initial,
    required TResult Function(_EntityStatesStateInProgress value) inProgress,
    required TResult Function(_EntityStatesStateSuccess value) success,
    required TResult Function(_EntityStatesStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EntityStatesStateInitial value)? initial,
    TResult Function(_EntityStatesStateInProgress value)? inProgress,
    TResult Function(_EntityStatesStateSuccess value)? success,
    TResult Function(_EntityStatesStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EntityStatesStateInitial value)? initial,
    TResult Function(_EntityStatesStateInProgress value)? inProgress,
    TResult Function(_EntityStatesStateSuccess value)? success,
    TResult Function(_EntityStatesStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _EntityStatesStateInitial implements EntityStatesState {
  const factory _EntityStatesStateInitial() = _$_EntityStatesStateInitial;
}

/// @nodoc
abstract class _$EntityStatesStateInProgressCopyWith<$Res> {
  factory _$EntityStatesStateInProgressCopyWith(
          _EntityStatesStateInProgress value,
          $Res Function(_EntityStatesStateInProgress) then) =
      __$EntityStatesStateInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$EntityStatesStateInProgressCopyWithImpl<$Res>
    extends _$EntityStatesStateCopyWithImpl<$Res>
    implements _$EntityStatesStateInProgressCopyWith<$Res> {
  __$EntityStatesStateInProgressCopyWithImpl(
      _EntityStatesStateInProgress _value,
      $Res Function(_EntityStatesStateInProgress) _then)
      : super(_value, (v) => _then(v as _EntityStatesStateInProgress));

  @override
  _EntityStatesStateInProgress get _value =>
      super._value as _EntityStatesStateInProgress;
}

/// @nodoc

class _$_EntityStatesStateInProgress implements _EntityStatesStateInProgress {
  const _$_EntityStatesStateInProgress();

  @override
  String toString() {
    return 'EntityStatesState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EntityStatesStateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<EntityStateModel> entityStates) success,
    required TResult Function(String error) error,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<EntityStateModel> entityStates)? success,
    TResult Function(String error)? error,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<EntityStateModel> entityStates)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EntityStatesStateInitial value) initial,
    required TResult Function(_EntityStatesStateInProgress value) inProgress,
    required TResult Function(_EntityStatesStateSuccess value) success,
    required TResult Function(_EntityStatesStateError value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EntityStatesStateInitial value)? initial,
    TResult Function(_EntityStatesStateInProgress value)? inProgress,
    TResult Function(_EntityStatesStateSuccess value)? success,
    TResult Function(_EntityStatesStateError value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EntityStatesStateInitial value)? initial,
    TResult Function(_EntityStatesStateInProgress value)? inProgress,
    TResult Function(_EntityStatesStateSuccess value)? success,
    TResult Function(_EntityStatesStateError value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _EntityStatesStateInProgress implements EntityStatesState {
  const factory _EntityStatesStateInProgress() = _$_EntityStatesStateInProgress;
}

/// @nodoc
abstract class _$EntityStatesStateSuccessCopyWith<$Res> {
  factory _$EntityStatesStateSuccessCopyWith(_EntityStatesStateSuccess value,
          $Res Function(_EntityStatesStateSuccess) then) =
      __$EntityStatesStateSuccessCopyWithImpl<$Res>;
  $Res call({List<EntityStateModel> entityStates});
}

/// @nodoc
class __$EntityStatesStateSuccessCopyWithImpl<$Res>
    extends _$EntityStatesStateCopyWithImpl<$Res>
    implements _$EntityStatesStateSuccessCopyWith<$Res> {
  __$EntityStatesStateSuccessCopyWithImpl(_EntityStatesStateSuccess _value,
      $Res Function(_EntityStatesStateSuccess) _then)
      : super(_value, (v) => _then(v as _EntityStatesStateSuccess));

  @override
  _EntityStatesStateSuccess get _value =>
      super._value as _EntityStatesStateSuccess;

  @override
  $Res call({
    Object? entityStates = freezed,
  }) {
    return _then(_EntityStatesStateSuccess(
      entityStates == freezed
          ? _value.entityStates
          : entityStates // ignore: cast_nullable_to_non_nullable
              as List<EntityStateModel>,
    ));
  }
}

/// @nodoc

class _$_EntityStatesStateSuccess implements _EntityStatesStateSuccess {
  const _$_EntityStatesStateSuccess(this.entityStates);

  @override
  final List<EntityStateModel> entityStates;

  @override
  String toString() {
    return 'EntityStatesState.success(entityStates: $entityStates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EntityStatesStateSuccess &&
            const DeepCollectionEquality()
                .equals(other.entityStates, entityStates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(entityStates));

  @JsonKey(ignore: true)
  @override
  _$EntityStatesStateSuccessCopyWith<_EntityStatesStateSuccess> get copyWith =>
      __$EntityStatesStateSuccessCopyWithImpl<_EntityStatesStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<EntityStateModel> entityStates) success,
    required TResult Function(String error) error,
  }) {
    return success(entityStates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<EntityStateModel> entityStates)? success,
    TResult Function(String error)? error,
  }) {
    return success?.call(entityStates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<EntityStateModel> entityStates)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(entityStates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EntityStatesStateInitial value) initial,
    required TResult Function(_EntityStatesStateInProgress value) inProgress,
    required TResult Function(_EntityStatesStateSuccess value) success,
    required TResult Function(_EntityStatesStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EntityStatesStateInitial value)? initial,
    TResult Function(_EntityStatesStateInProgress value)? inProgress,
    TResult Function(_EntityStatesStateSuccess value)? success,
    TResult Function(_EntityStatesStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EntityStatesStateInitial value)? initial,
    TResult Function(_EntityStatesStateInProgress value)? inProgress,
    TResult Function(_EntityStatesStateSuccess value)? success,
    TResult Function(_EntityStatesStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _EntityStatesStateSuccess implements EntityStatesState {
  const factory _EntityStatesStateSuccess(List<EntityStateModel> entityStates) =
      _$_EntityStatesStateSuccess;

  List<EntityStateModel> get entityStates;
  @JsonKey(ignore: true)
  _$EntityStatesStateSuccessCopyWith<_EntityStatesStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EntityStatesStateErrorCopyWith<$Res> {
  factory _$EntityStatesStateErrorCopyWith(_EntityStatesStateError value,
          $Res Function(_EntityStatesStateError) then) =
      __$EntityStatesStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$EntityStatesStateErrorCopyWithImpl<$Res>
    extends _$EntityStatesStateCopyWithImpl<$Res>
    implements _$EntityStatesStateErrorCopyWith<$Res> {
  __$EntityStatesStateErrorCopyWithImpl(_EntityStatesStateError _value,
      $Res Function(_EntityStatesStateError) _then)
      : super(_value, (v) => _then(v as _EntityStatesStateError));

  @override
  _EntityStatesStateError get _value => super._value as _EntityStatesStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_EntityStatesStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EntityStatesStateError implements _EntityStatesStateError {
  const _$_EntityStatesStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'EntityStatesState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EntityStatesStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$EntityStatesStateErrorCopyWith<_EntityStatesStateError> get copyWith =>
      __$EntityStatesStateErrorCopyWithImpl<_EntityStatesStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<EntityStateModel> entityStates) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<EntityStateModel> entityStates)? success,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<EntityStateModel> entityStates)? success,
    TResult Function(String error)? error,
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
    required TResult Function(_EntityStatesStateInitial value) initial,
    required TResult Function(_EntityStatesStateInProgress value) inProgress,
    required TResult Function(_EntityStatesStateSuccess value) success,
    required TResult Function(_EntityStatesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EntityStatesStateInitial value)? initial,
    TResult Function(_EntityStatesStateInProgress value)? inProgress,
    TResult Function(_EntityStatesStateSuccess value)? success,
    TResult Function(_EntityStatesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EntityStatesStateInitial value)? initial,
    TResult Function(_EntityStatesStateInProgress value)? inProgress,
    TResult Function(_EntityStatesStateSuccess value)? success,
    TResult Function(_EntityStatesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _EntityStatesStateError implements EntityStatesState {
  const factory _EntityStatesStateError(String error) =
      _$_EntityStatesStateError;

  String get error;
  @JsonKey(ignore: true)
  _$EntityStatesStateErrorCopyWith<_EntityStatesStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
