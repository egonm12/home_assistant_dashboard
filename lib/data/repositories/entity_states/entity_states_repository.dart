import 'package:home_assistant_dart/home_assistant_dart.dart';
import 'package:home_assistant_dashboard/data/models/entity_state/entity_state_model.dart';
import 'package:home_assistant_dashboard/services/home_assistant_client.dart';

class EntityStatesRepository {
  EntityStatesRepository({
    HomeAssistantDart? client,
  }) : client = client ?? HomeAssistantClient.client;

  final HomeAssistantDart client;

  Future<List<EntityStateModel>> getEntityStates() async {
    try {
      final List<dynamic> states = await client.getStates();

      return states.map((state) => EntityStateModel.fromJson(state)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
