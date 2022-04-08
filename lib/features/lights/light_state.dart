import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:home_assistant_dashboard/data/models/light_state/light_state_model.dart';

part 'light_state.freezed.dart';

class LightState {
  const LightState({
    required this.getLightState,
    required this.setLightState,
  });

  final GetLightState getLightState;
  final SetLightState setLightState;

  LightState copyWith({
    GetLightState? getLightState,
    SetLightState? setLightState,
  }) =>
      LightState(
        getLightState: getLightState ?? this.getLightState,
        setLightState: setLightState ?? this.setLightState,
      );
}

@freezed
abstract class GetLightState with _$GetLightState {
  const factory GetLightState.initial() = _GetLightStateInitial;
  const factory GetLightState.inProgress() = _GetLightStateInProgress;
  const factory GetLightState.success(LightStateModel lightState) =
      _GetLightStateSuccess;
  const factory GetLightState.error(String error) = _GetLightStateError;
}

@freezed
abstract class SetLightState with _$SetLightState {
  const factory SetLightState.initial() = _SetLightStateInitial;
  const factory SetLightState.inProgress() = _SetLightStateInProgress;
  const factory SetLightState.success(LightStateModel lightState) =
      _SetLightStateSuccess;
  const factory SetLightState.error(String error) = _SetLightStateError;
}
