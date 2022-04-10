import 'package:home_assistant_dashboard/data/models/entity_state/entity_state_model.dart';

class EntityStatesHelper {
  EntityStatesHelper();

  List<EntityStateModel> filterLightEntities(
          List<EntityStateModel> entityStates) =>
      entityStates
          .where(
              (entityState) => entityState.entityId.split('.').first == 'light')
          .toList();
}
