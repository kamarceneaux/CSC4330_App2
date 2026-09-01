import 'package:flutter_test/flutter_test.dart';

import 'package:weightlifting_app/main.dart';

void main() {
  testWidgets('App renders workout log home screen', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const WeightliftingApp());

    expect(find.text('Workout Log'), findsOneWidget);
    expect(find.text('No workouts logged yet.'), findsOneWidget);
  });
}
