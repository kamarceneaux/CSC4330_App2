import 'package:flutter/material.dart';

import '../models/workout_session.dart';
import 'active_workout_screen.dart';
import 'tutorials_screen.dart';
import 'workout_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<WorkoutSession> _sessions = [];

  void _startWorkout() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ActiveWorkoutScreen(
          onFinish: (session) {
            setState(() {
              _sessions.insert(0, session);
            });
          },
        ),
      ),
    );
  }

  void _viewSession(WorkoutSession session) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WorkoutDetailScreen(session: session),
      ),
    );
  }

  void _openTutorials() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TutorialsScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout Log'),
        actions: [
          IconButton(
            onPressed: _openTutorials,
            icon: const Icon(Icons.menu_book),
            tooltip: 'Exercise Tutorials',
          ),
        ],
      ),
      body: _sessions.isEmpty
          ? const Center(child: Text('No workouts logged yet.'))
          : ListView.builder(
              itemCount: _sessions.length,
              itemBuilder: (context, index) {
                final session = _sessions[index];
                final date = session.date;
                return ListTile(
                  leading: const Icon(Icons.fitness_center),
                  title: Text('${date.month}/${date.day}/${date.year}'),
                  subtitle: Text('${session.exercises.length} exercises'),
                  onTap: () => _viewSession(session),
                );
              },
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _startWorkout,
        icon: const Icon(Icons.add),
        label: const Text('Start Workout'),
      ),
    );
  }
}
