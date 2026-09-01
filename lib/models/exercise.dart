import 'exercise_set.dart';

class Exercise {
  Exercise({required this.name, List<ExerciseSet>? sets})
    : sets = sets ?? [];

  final String name;
  final List<ExerciseSet> sets;
}
