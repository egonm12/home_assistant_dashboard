import 'package:home_assistant_dashboard/data/models/entity_state/entity_state_model.dart';
import 'package:home_assistant_dashboard/data/repositories/lights/lights_repository.dart';
import 'package:home_assistant_dashboard/features/lights/light_state.dart';
import 'package:home_assistant_dashboard/widgets/light_control_card/light_control_card.dart';
import 'package:state_notifier/state_notifier.dart';

class LightModel extends StateNotifier<LightState> {
  LightModel({
    required this.lightsRepository,
  }) : super(
          const LightState(
            getLightState: GetLightState.initial(),
            setLightState: SetLightState.initial(),
          ),
        );

  final LightsRepository lightsRepository;

  Future<void> getLightState(String entityId) async {
    // await Future.delayed(const Duration(seconds: 2));
    state = state.copyWith(getLightState: const GetLightState.inProgress());
    try {
      final lightState = await lightsRepository.getLightState(entityId);

      state = state.copyWith(
        getLightState: GetLightState.success(lightState),
      );
    } catch (e) {
      state = state.copyWith(getLightState: GetLightState.error(e.toString()));
    }
  }

  Future<void> setLightState(
    String entityId,
    DeviceState deviceState,
    EntityStateModel lightState,
  ) async {
    state = state.copyWith(setLightState: const SetLightState.inProgress());
    try {
      final newLightState = await lightsRepository.setLightState(
        entityId,
        deviceState,
        lightState,
      );

      state = state.copyWith(
        setLightState: SetLightState.success(newLightState),
      );
    } catch (e) {
      state = state.copyWith(setLightState: SetLightState.error(e.toString()));
    }
  }
}
