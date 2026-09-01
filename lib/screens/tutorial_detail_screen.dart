import 'package:flutter/material.dart';

import '../models/exercise_tutorial.dart';

class TutorialDetailScreen extends StatelessWidget {
  const TutorialDetailScreen({super.key, required this.tutorial});

  final ExerciseTutorial tutorial;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(tutorial.name)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Targets: ${tutorial.muscleGroups}',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 16),
          ...tutorial.steps.asMap().entries.map((entry) {
            final stepNumber = entry.key + 1;
            final step = entry.value;
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(radius: 12, child: Text('$stepNumber')),
                  const SizedBox(width: 12),
                  Expanded(child: Text(step)),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
