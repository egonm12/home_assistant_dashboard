import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:home_assistant_dashboard/features/entity_states/entity_states_model.dart';
import 'package:home_assistant_dashboard/features/entity_states/entity_states_state.dart';
import 'package:home_assistant_dashboard/presentation/light_control/light_control_container.dart';
import 'package:provider/provider.dart';

class LightControlScreen extends HookWidget {
  const LightControlScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<EntityStatesState>();

    useEffect(() {
      Future.microtask(
          () => context.read<EntityStatesModel>().getEntityStates());
    }, []);

    useEffect(() {
      print(state);
    }, [state]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Light Control'),
      ),
      body: const LightControlContainer(),
    );
  }
}
