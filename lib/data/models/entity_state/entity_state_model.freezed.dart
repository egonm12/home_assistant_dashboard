// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntityStateModel _$EntityStateModelFromJson(Map<String, dynamic> json) {
  return _EntityStateModel.fromJson(json);
}

/// @nodoc
class _$EntityStateModelTearOff {
  const _$EntityStateModelTearOff();

  _EntityStateModel call(
      {@JsonKey(name: 'entity_id') required String entityId,
      required String state,
      required Map<String, dynamic> attributes,
      @JsonKey(name: 'last_changed') required DateTime lastChanged,
      @JsonKey(name: 'last_updated') required DateTime lastUpdated,
      required Context context}) {
    return _EntityStateModel(
      entityId: entityId,
      state: state,
      attributes: attributes,
      lastChanged: lastChanged,
      lastUpdated: lastUpdated,
      context: context,
    );
  }

  EntityStateModel fromJson(Map<String, Object?> json) {
    return EntityStateModel.fromJson(json);
  }
}

/// @nodoc
const $EntityStateModel = _$EntityStateModelTearOff();

/// @nodoc
mixin _$EntityStateModel {
  @JsonKey(name: 'entity_id')
  String get entityId => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  Map<String, dynamic> get attributes => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_changed')
  DateTime get lastChanged => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  Context get context => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntityStateModelCopyWith<EntityStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityStateModelCopyWith<$Res> {
  factory $EntityStateModelCopyWith(
          EntityStateModel value, $Res Function(EntityStateModel) then) =
      _$EntityStateModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'entity_id') String entityId,
      String state,
      Map<String, dynamic> attributes,
      @JsonKey(name: 'last_changed') DateTime lastChanged,
      @JsonKey(name: 'last_updated') DateTime lastUpdated,
      Context context});

  $ContextCopyWith<$Res> get context;
}

/// @nodoc
class _$EntityStateModelCopyWithImpl<$Res>
    implements $EntityStateModelCopyWith<$Res> {
  _$EntityStateModelCopyWithImpl(this._value, this._then);

  final EntityStateModel _value;
  // ignore: unused_field
  final $Res Function(EntityStateModel) _then;

  @override
  $Res call({
    Object? entityId = freezed,
    Object? state = freezed,
    Object? attributes = freezed,
    Object? lastChanged = freezed,
    Object? lastUpdated = freezed,
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      entityId: entityId == freezed
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lastChanged: lastChanged == freezed
          ? _value.lastChanged
          : lastChanged // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context,
    ));
  }

  @override
  $ContextCopyWith<$Res> get context {
    return $ContextCopyWith<$Res>(_value.context, (value) {
      return _then(_value.copyWith(context: value));
    });
  }
}

/// @nodoc
abstract class _$EntityStateModelCopyWith<$Res>
    implements $EntityStateModelCopyWith<$Res> {
  factory _$EntityStateModelCopyWith(
          _EntityStateModel value, $Res Function(_EntityStateModel) then) =
      __$EntityStateModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'entity_id') String entityId,
      String state,
      Map<String, dynamic> attributes,
      @JsonKey(name: 'last_changed') DateTime lastChanged,
      @JsonKey(name: 'last_updated') DateTime lastUpdated,
      Context context});

  @override
  $ContextCopyWith<$Res> get context;
}

/// @nodoc
class __$EntityStateModelCopyWithImpl<$Res>
    extends _$EntityStateModelCopyWithImpl<$Res>
    implements _$EntityStateModelCopyWith<$Res> {
  __$EntityStateModelCopyWithImpl(
      _EntityStateModel _value, $Res Function(_EntityStateModel) _then)
      : super(_value, (v) => _then(v as _EntityStateModel));

  @override
  _EntityStateModel get _value => super._value as _EntityStateModel;

  @override
  $Res call({
    Object? entityId = freezed,
    Object? state = freezed,
    Object? attributes = freezed,
    Object? lastChanged = freezed,
    Object? lastUpdated = freezed,
    Object? context = freezed,
  }) {
    return _then(_EntityStateModel(
      entityId: entityId == freezed
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      lastChanged: lastChanged == freezed
          ? _value.lastChanged
          : lastChanged // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntityStateModel implements _EntityStateModel {
  const _$_EntityStateModel(
      {@JsonKey(name: 'entity_id') required this.entityId,
      required this.state,
      required this.attributes,
      @JsonKey(name: 'last_changed') required this.lastChanged,
      @JsonKey(name: 'last_updated') required this.lastUpdated,
      required this.context});

  factory _$_EntityStateModel.fromJson(Map<String, dynamic> json) =>
      _$$_EntityStateModelFromJson(json);

  @override
  @JsonKey(name: 'entity_id')
  final String entityId;
  @override
  final String state;
  @override
  final Map<String, dynamic> attributes;
  @override
  @JsonKey(name: 'last_changed')
  final DateTime lastChanged;
  @override
  @JsonKey(name: 'last_updated')
  final DateTime lastUpdated;
  @override
  final Context context;

  @override
  String toString() {
    return 'EntityStateModel(entityId: $entityId, state: $state, attributes: $attributes, lastChanged: $lastChanged, lastUpdated: $lastUpdated, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EntityStateModel &&
            const DeepCollectionEquality().equals(other.entityId, entityId) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            const DeepCollectionEquality()
                .equals(other.lastChanged, lastChanged) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(entityId),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(attributes),
      const DeepCollectionEquality().hash(lastChanged),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$EntityStateModelCopyWith<_EntityStateModel> get copyWith =>
      __$EntityStateModelCopyWithImpl<_EntityStateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntityStateModelToJson(this);
  }
}

abstract class _EntityStateModel implements EntityStateModel {
  const factory _EntityStateModel(
      {@JsonKey(name: 'entity_id') required String entityId,
      required String state,
      required Map<String, dynamic> attributes,
      @JsonKey(name: 'last_changed') required DateTime lastChanged,
      @JsonKey(name: 'last_updated') required DateTime lastUpdated,
      required Context context}) = _$_EntityStateModel;

  factory _EntityStateModel.fromJson(Map<String, dynamic> json) =
      _$_EntityStateModel.fromJson;

  @override
  @JsonKey(name: 'entity_id')
  String get entityId;
  @override
  String get state;
  @override
  Map<String, dynamic> get attributes;
  @override
  @JsonKey(name: 'last_changed')
  DateTime get lastChanged;
  @override
  @JsonKey(name: 'last_updated')
  DateTime get lastUpdated;
  @override
  Context get context;
  @override
  @JsonKey(ignore: true)
  _$EntityStateModelCopyWith<_EntityStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Context _$ContextFromJson(Map<String, dynamic> json) {
  return _Context.fromJson(json);
}

/// @nodoc
class _$ContextTearOff {
  const _$ContextTearOff();

  _Context call(
      {required String id,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'user_id') String? userId}) {
    return _Context(
      id: id,
      parentId: parentId,
      userId: userId,
    );
  }

  Context fromJson(Map<String, Object?> json) {
    return Context.fromJson(json);
  }
}

/// @nodoc
const $Context = _$ContextTearOff();

/// @nodoc
mixin _$Context {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContextCopyWith<Context> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContextCopyWith<$Res> {
  factory $ContextCopyWith(Context value, $Res Function(Context) then) =
      _$ContextCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'user_id') String? userId});
}

/// @nodoc
class _$ContextCopyWithImpl<$Res> implements $ContextCopyWith<$Res> {
  _$ContextCopyWithImpl(this._value, this._then);

  final Context _value;
  // ignore: unused_field
  final $Res Function(Context) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ContextCopyWith<$Res> implements $ContextCopyWith<$Res> {
  factory _$ContextCopyWith(_Context value, $Res Function(_Context) then) =
      __$ContextCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'user_id') String? userId});
}

/// @nodoc
class __$ContextCopyWithImpl<$Res> extends _$ContextCopyWithImpl<$Res>
    implements _$ContextCopyWith<$Res> {
  __$ContextCopyWithImpl(_Context _value, $Res Function(_Context) _then)
      : super(_value, (v) => _then(v as _Context));

  @override
  _Context get _value => super._value as _Context;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_Context(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Context implements _Context {
  const _$_Context(
      {required this.id,
      @JsonKey(name: 'parent_id') this.parentId,
      @JsonKey(name: 'user_id') this.userId});

  factory _$_Context.fromJson(Map<String, dynamic> json) =>
      _$$_ContextFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'parent_id')
  final String? parentId;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;

  @override
  String toString() {
    return 'Context(id: $id, parentId: $parentId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Context &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$ContextCopyWith<_Context> get copyWith =>
      __$ContextCopyWithImpl<_Context>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContextToJson(this);
  }
}

abstract class _Context implements Context {
  const factory _Context(
      {required String id,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'user_id') String? userId}) = _$_Context;

  factory _Context.fromJson(Map<String, dynamic> json) = _$_Context.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'parent_id')
  String? get parentId;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$ContextCopyWith<_Context> get copyWith =>
      throw _privateConstructorUsedError;
}
