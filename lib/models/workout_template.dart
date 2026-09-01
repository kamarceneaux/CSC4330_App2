class WorkoutTemplate {
  const WorkoutTemplate({required this.name, required this.exercises});

  final String name;
  final List<String> exercises;
}

const List<WorkoutTemplate> workoutTemplates = [
  WorkoutTemplate(
    name: 'Push',
    exercises: [
      'Bench Press',
      'Overhead Press',
      'Incline Dumbbell Press',
      'Triceps Pushdown',
      'Lateral Raise',
    ],
  ),
  WorkoutTemplate(
    name: 'Pull',
    exercises: [
      'Deadlift',
      'Pull-Up',
      'Barbell Row',
      'Lat Pulldown',
      'Barbell Curl',
    ],
  ),
  WorkoutTemplate(
    name: 'Legs',
    exercises: [
      'Squat',
      'Romanian Deadlift',
      'Leg Press',
      'Leg Curl',
      'Standing Calf Raise',
    ],
  ),
  WorkoutTemplate(
    name: 'Upper Body',
    exercises: [
      'Bench Press',
      'Barbell Row',
      'Overhead Press',
      'Pull-Up',
      'Barbell Curl',
    ],
  ),
  WorkoutTemplate(
    name: 'Lower Body',
    exercises: [
      'Squat',
      'Deadlift',
      'Leg Press',
      'Standing Calf Raise',
    ],
  ),
  WorkoutTemplate(
    name: 'Full Body',
    exercises: [
      'Squat',
      'Bench Press',
      'Barbell Row',
      'Overhead Press',
    ],
  ),
];
