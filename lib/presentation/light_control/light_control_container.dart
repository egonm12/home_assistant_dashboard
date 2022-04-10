import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:home_assistant_dashboard/data/models/entity_state/entity_state_model.dart';
import 'package:home_assistant_dashboard/features/entity_states/entity_states_helper.dart';
import 'package:home_assistant_dashboard/features/entity_states/entity_states_model.dart';
import 'package:home_assistant_dashboard/features/entity_states/entity_states_state.dart';
import 'package:home_assistant_dashboard/widgets/light_control_card/light_control_card.dart';
import 'package:provider/provider.dart';

class LightControlContainer extends HookWidget {
  const LightControlContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<EntityStatesState>();
    List<EntityStateModel>? lightEntityStates;

    useEffect(() {
      Future.microtask(
          () => context.read<EntityStatesModel>().getEntityStates());
    }, []);

    useEffect(() {
      state.whenOrNull(success: (entityStates) {
        lightEntityStates =
            EntityStatesHelper().filterLightEntities(entityStates);
      });
    }, [state]);

    useEffect(() {
      print(lightEntityStates?.length);
    }, [lightEntityStates]);

    final items = ['werkkamer', 'eetkamer', 'woonkamer', 'keuken', 'buiten'];

    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemBuilder: (context, index) => Column(
            children: [
              LightControlCard.create(
                context,
                Icons.lightbulb,
                'light.${items[index]}',
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
          itemCount: items.length,
        ));
  }
}
