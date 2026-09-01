import 'package:flutter/material.dart';

import '../models/workout_session.dart';

class WorkoutDetailScreen extends StatelessWidget {
  const WorkoutDetailScreen({super.key, required this.session});

  final WorkoutSession session;

  @override
  Widget build(BuildContext context) {
    final date = session.date;
    return Scaffold(
      appBar: AppBar(
        title: Text('${date.month}/${date.day}/${date.year}'),
      ),
      body: session.exercises.isEmpty
          ? const Center(child: Text('No exercises logged.'))
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: session.exercises.length,
              itemBuilder: (context, index) {
                final exercise = session.exercises[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          exercise.name,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        if (exercise.sets.isEmpty)
                          const Text('No sets logged.')
                        else
                          ...exercise.sets.asMap().entries.map((entry) {
                            final setNumber = entry.key + 1;
                            final set = entry.value;
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 2,
                              ),
                              child: Text(
                                'Set $setNumber: ${set.weight} lb x ${set.reps} reps',
                              ),
                            );
                          }),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
