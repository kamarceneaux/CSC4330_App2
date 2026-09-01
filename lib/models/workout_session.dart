import 'exercise.dart';

class WorkoutSession {
  WorkoutSession({required this.date, List<Exercise>? exercises})
    : exercises = exercises ?? [];

  final DateTime date;
  final List<Exercise> exercises;
}
