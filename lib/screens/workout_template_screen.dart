import 'package:flutter/material.dart';

import '../models/workout_session.dart';
import '../models/workout_template.dart';
import 'active_workout_screen.dart';

class WorkoutTemplateScreen extends StatelessWidget {
  const WorkoutTemplateScreen({super.key, required this.onFinish});

  final void Function(WorkoutSession session) onFinish;

  static const Map<String, IconData> _icons = {
    'Push': Icons.arrow_upward_rounded,
    'Pull': Icons.arrow_downward_rounded,
    'Legs': Icons.directions_walk_rounded,
    'Upper Body': Icons.accessibility_new_rounded,
    'Lower Body': Icons.airline_seat_legroom_extra_rounded,
    'Full Body': Icons.fitness_center_rounded,
  };

  static const Map<String, Color> _colors = {
    'Push': Color(0xFFEF6C50),
    'Pull': Color(0xFF3D8BFD),
    'Legs': Color(0xFF2FB380),
    'Upper Body': Color(0xFF9B6BF2),
    'Lower Body': Color(0xFFE0A72E),
    'Full Body': Color(0xFFEF5DA8),
  };

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
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: const Text('Choose a Split'),
        scrolledUnderElevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
        children: [
          Text(
            'Pick a split to preload your exercises, or start blank.',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: colorScheme.onSurfaceVariant),
          ),
          const SizedBox(height: 20),
          for (final template in workoutTemplates)
            _TemplateCard(
              title: template.name,
              subtitle: template.exercises.join(' · '),
              icon: _icons[template.name] ?? Icons.fitness_center_rounded,
              color: _colors[template.name] ?? colorScheme.primary,
              onTap: () => _startWorkout(context, template),
            ),
          _TemplateCard(
            title: 'Blank Workout',
            subtitle: 'Start empty and add your own exercises',
            icon: Icons.add_rounded,
            color: colorScheme.outline,
            onTap: () => _startWorkout(context, null),
          ),
        ],
      ),
    );
  }
}

class _TemplateCard extends StatelessWidget {
  const _TemplateCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: color.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Icon(icon, color: color),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall
                            ?.copyWith(color: colorScheme.onSurfaceVariant),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Icon(Icons.chevron_right_rounded, color: colorScheme.outline),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
