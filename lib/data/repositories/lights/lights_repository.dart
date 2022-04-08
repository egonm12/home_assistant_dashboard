import 'package:home_assistant_dart/home_assistant_dart.dart';
import 'package:home_assistant_dashboard/data/models/light_state/light_state_model.dart';
import 'package:home_assistant_dashboard/services/home_assistant_client.dart';

import '../../../widgets/light_control_card/light_control_card.dart';

class LightsRepository {
  final HomeAssistantDart client;

  LightsRepository({
    HomeAssistantDart? client,
  }) : client = client ?? HomeAssistantClient.client;

  Future<LightStateModel> getLightState(String entityId) async {
    try {
      final state = await client.getState(entityId);

      return LightStateModel.fromJson(state);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<LightStateModel> switchLight(String entityId, DeviceState deviceState,
      LightStateModel lightState) async {
    try {
      final List<dynamic> response = await client.callService(
        'light',
        deviceState == DeviceState.on ? 'turn_on' : 'turn_off',
        {
          'entity_id': entityId,
        },
      );
      final _lightState = LightStateModel.fromJson(response[0]);

      return await _setLightState(
        entityId,
        deviceState,
        lightState.copyWith(
          attributes: lightState.attributes.copyWith(
            brightness: _lightState.attributes.brightness,
          ),
        ),
      );
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<LightStateModel> _setLightState(
    String entityId,
    DeviceState deviceState,
    LightStateModel lightState,
  ) async {
    try {
      final state = await client.setState(
        entityId,
        deviceState.name,
        lightState.attributes.toJson(),
      );

      return LightStateModel.fromJson(state);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<LightStateModel> setLightState(
    String entityId,
    DeviceState deviceState,
    LightStateModel lightState,
  ) async {
    try {
      final Map<String, dynamic> attributes = {
        'entity_id': entityId,
      };
      if (deviceState == DeviceState.on) {
        attributes['brightness'] = lightState.attributes.brightness;
      }
      await client.callService(
        'light',
        deviceState == DeviceState.on ? 'turn_on' : 'turn_off',
        attributes,
      );

      final state = await client.setState(
        entityId,
        deviceState.name,
        lightState.attributes.toJson(),
      );

      return LightStateModel.fromJson(state);
    } catch (e) {
      throw Exception(e);
    }
  }
}
