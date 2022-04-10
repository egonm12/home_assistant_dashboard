import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_assistant_dashboard/data/models/entity_state/entity_state_model.dart';

part 'entity_states_state.freezed.dart';

@freezed
abstract class EntityStatesState with _$EntityStatesState {
  const factory EntityStatesState.initial() = _EntityStatesStateInitial;
  const factory EntityStatesState.inProgress() = _EntityStatesStateInProgress;
  const factory EntityStatesState.success(List<EntityStateModel> entityStates) =
      _EntityStatesStateSuccess;
  const factory EntityStatesState.error(String error) = _EntityStatesStateError;
}
