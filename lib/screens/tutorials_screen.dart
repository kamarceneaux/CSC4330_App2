import 'package:flutter/material.dart';

import '../data/exercise_tutorials.dart';
import 'tutorial_detail_screen.dart';

class TutorialsScreen extends StatelessWidget {
  const TutorialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercise Tutorials')),
      body: ListView.builder(
        itemCount: exerciseTutorials.length,
        itemBuilder: (context, index) {
          final tutorial = exerciseTutorials[index];
          return ListTile(
            leading: const Icon(Icons.menu_book),
            title: Text(tutorial.name),
            subtitle: Text(tutorial.muscleGroups),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      TutorialDetailScreen(tutorial: tutorial),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
