import '../models/exercise_tutorial.dart';

const List<ExerciseTutorial> exerciseTutorials = [
  ExerciseTutorial(
    name: 'Push-up',
    muscleGroups: 'Chest, Shoulders, Triceps',
    steps: [
      'Start in a plank position with hands slightly wider than shoulder-width apart.',
      'Keep your body in a straight line from head to heels, core braced.',
      'Lower your chest toward the floor by bending your elbows at about a 45-degree angle.',
      'Stop when your chest is just above the floor.',
      'Push through your palms to return to the starting position.',
    ],
  ),
  ExerciseTutorial(
    name: 'Pull-up',
    muscleGroups: 'Back, Biceps, Shoulders',
    steps: [
      'Grip the bar with hands slightly wider than shoulder-width, palms facing away from you.',
      'Hang with arms fully extended and core engaged.',
      'Pull your body up by driving your elbows down and back until your chin clears the bar.',
      'Keep your shoulders down and avoid swinging.',
      'Lower yourself back down with control to a full hang.',
    ],
  ),
  ExerciseTutorial(
    name: 'Lat Pulldown',
    muscleGroups: 'Back, Biceps',
    steps: [
      'Sit at the machine and secure your knees under the pad.',
      'Grip the bar wider than shoulder-width with palms facing forward.',
      'Pull the bar down toward your upper chest while keeping your torso upright.',
      'Squeeze your shoulder blades together at the bottom of the movement.',
      'Slowly return the bar to the starting position with control.',
    ],
  ),
  ExerciseTutorial(
    name: 'Squat',
    muscleGroups: 'Quads, Glutes, Hamstrings',
    steps: [
      'Stand with feet shoulder-width apart, toes slightly turned out.',
      'Brace your core and keep your chest up.',
      'Bend your knees and hips to lower your body as if sitting into a chair.',
      'Descend until your thighs are at least parallel to the floor.',
      'Drive through your heels to return to standing.',
    ],
  ),
];
