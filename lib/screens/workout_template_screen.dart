import 'package:flutter/material.dart';

import '../models/workout_template.dart';
import '../models/workout_session.dart';
import 'active_workout_screen.dart';

class WorkoutTemplateScreen extends StatelessWidget {
  const WorkoutTemplateScreen({super.key, required this.onFinish});

  final void Function(WorkoutSession session) onFinish;

  void _startWorkout(BuildContext context, WorkoutTemplate? template) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ActiveWorkoutScreen(
          template: template,
          onFinish: onFinish,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choose a Split')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          for (final template in workoutTemplates)
            Card(
              margin: const EdgeInsets.only(bottom: 12),
              child: ListTile(
                leading: const Icon(Icons.fitness_center),
                title: Text(template.name),
                subtitle: Text(template.exercises.join(', ')),
                onTap: () => _startWorkout(context, template),
              ),
            ),
          Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const Icon(Icons.add_box_outlined),
              title: const Text('Blank Workout'),
              subtitle: const Text('Start empty and add your own exercises'),
              onTap: () => _startWorkout(context, null),
            ),
          ),
        ],
      ),
    );
  }
}
