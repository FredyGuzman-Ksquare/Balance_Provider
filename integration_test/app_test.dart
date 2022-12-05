import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:balance/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('end-to-end test', () {
    testWidgets('add_concept', (tester) async {
      app.main();
      await tester.pumpAndSettle();
      // Clicking Fab Button & Navigate to Add Task Screen
      final Finder createButton = find.byKey(const Key('createButton'));
      await tester.tap(createButton);
      await tester.pumpAndSettle();

      // Adding new Task
      await tester.enterText(
          find.byKey(const Key('titleTextField')), 'Xbox 360');

      await tester.enterText(
          find.byKey(const Key('amountTextField')), '399.99');

      await tester.enterText(
          find.byKey(const Key('descTextField')), 'Brand new');
      final Finder addTaskButton = find.byKey(const Key('submitButton'));
      await tester.tap(addTaskButton);

      expect(find.text('iPhone 11'), findsOneWidget);
    });
  });
}
