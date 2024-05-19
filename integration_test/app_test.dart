import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab5/factory1.dart';
import 'package:integration_test/integration_test.dart';
import 'package:lab5/main.dart' as app;
import 'package:lab5/activation.dart';
import 'package:lab5/invitation.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("app test", () {
    testWidgets(
      "test normal flow",
          (WidgetTester tester) async {
        app.main();
        await tester.pumpAndSettle();

        await Future.delayed(const Duration(seconds: 2));
        await tester.tap(find.byIcon(Icons.factory).at(0));
        await tester.pumpAndSettle();
        await Future.delayed(const Duration(seconds: 2));
        await tester.tap(find.byIcon(Icons.factory).at(1));
        await tester.pumpAndSettle();
        await Future.delayed(const Duration(seconds: 6));
        await tester.tap(find.byIcon(Icons.factory).at(2));
        await Future.delayed(const Duration(seconds: 3));
        await tester.pumpAndSettle();
        await tester.tap(find.byIcon(Icons.person));
        await tester.pumpAndSettle();

        expect(find.byType(Activation), findsOneWidget);

        await tester.enterText(find.byType(TextField), "537737");
        await Future.delayed(const Duration(seconds: 3));
        await tester.tap(find.byType(Checkbox));
        await Future.delayed(const Duration(seconds: 2));
        await tester.tap(find.byType(ElevatedButton));
        await tester.pumpAndSettle();


        expect(find.byType(Invitation), findsOneWidget);

        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byKey(const Key("Text field")),'TANG');
        await tester.pumpAndSettle();
        await Future.delayed(const Duration(seconds: 4));
        await tester.enterText(find.byKey(const Key("Text field")), "451651848");
        await Future.delayed(const Duration(seconds: 5));
        await tester.pumpAndSettle();
        await tester.tap(find.byKey(const Key("button")),);
        await tester.pumpAndSettle();
        await Future.delayed(const Duration(seconds: 3));

        Navigator.of(tester.element(find.byType(Scaffold))).pop();
        await tester.pumpAndSettle();
        expect(find.byType(Fac1), findsOneWidget);
        await tester.pumpAndSettle();
        await Future.delayed(const Duration(seconds: 2));
      },
    );
  });
}
