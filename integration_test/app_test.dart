import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab5/factory1.dart';
import 'package:integration_test/integration_test.dart';
import 'package:lab5/main.dart' as app;
import 'package:lab5/activation.dart';
import 'package:lab5/otp.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("app test", () {
    testWidgets(
      "test normal flow",
          (WidgetTester tester) async {
        app.main();
        await tester.pumpAndSettle();

        await Future.delayed(const Duration(seconds: 2));
        await tester.pumpAndSettle();

        final factoryIconFinder = find.byIcon(Icons.factory);
        expect(factoryIconFinder, findsWidgets); // Ensure the icon is found
        await tester.tap(factoryIconFinder.first);
        await tester.pumpAndSettle();

        await Future.delayed(const Duration(seconds: 2));
        await tester.pumpAndSettle();

        await tester.tap(factoryIconFinder.first);
        await tester.pumpAndSettle();

        final personIconFinder = find.byIcon(Icons.person);
        expect(personIconFinder, findsOneWidget); // Ensure the icon is found
        await tester.tap(personIconFinder);
        await tester.pumpAndSettle();

        expect(find.byType(Activation), findsOneWidget);

        await tester.enterText(find.byType(TextField), "537737");
        await tester.pumpAndSettle();
        await Future.delayed(const Duration(seconds: 3));
        await tester.tap(find.byType(Checkbox));
        await Future.delayed(const Duration(seconds: 2));
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();

      },
    );
  });
}
