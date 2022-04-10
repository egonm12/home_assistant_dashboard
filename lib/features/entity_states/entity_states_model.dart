import 'package:home_assistant_dashboard/data/repositories/entity_states/entity_states_repository.dart';
import 'package:state_notifier/state_notifier.dart';

import 'entity_states_state.dart';

class EntityStatesModel extends StateNotifier<EntityStatesState> {
  EntityStatesModel({
    required this.entityStatesRepository,
  }) : super(const EntityStatesState.initial());

  final EntityStatesRepository entityStatesRepository;

  Future<void> getEntityStates() async {
    state = const EntityStatesState.inProgress();
    try {
      final entityStates = await entityStatesRepository.getEntityStates();

      state = EntityStatesState.success(entityStates);
    } catch (e) {
      state = EntityStatesState.error(e.toString());
    }
  }
}
