import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_state_model.g.dart';
part 'entity_state_model.freezed.dart';

@freezed
class EntityStateModel with _$EntityStateModel {
  const factory EntityStateModel({
    @JsonKey(name: 'entity_id') required String entityId,
    required String state,
    required Map<String, dynamic> attributes,
    @JsonKey(name: 'last_changed') required DateTime lastChanged,
    @JsonKey(name: 'last_updated') required DateTime lastUpdated,
    required Context context,
  }) = _EntityStateModel;

  factory EntityStateModel.fromJson(Map<String, dynamic> json) =>
      _$EntityStateModelFromJson(json);
}

@freezed
abstract class Context with _$Context {
  const factory Context({
    required String id,
    @JsonKey(name: 'parent_id') String? parentId,
    @JsonKey(name: 'user_id') String? userId,
  }) = _Context;

  factory Context.fromJson(Map<String, dynamic> json) =>
      _$ContextFromJson(json);
}
