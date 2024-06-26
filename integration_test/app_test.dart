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
        await tester.pumpAndSettle();
        await Future.delayed(const Duration(seconds: 3));
        await tester.testTextInput.receiveAction(TextInputAction.done);
        await tester.pumpAndSettle();
        await tester.tap(find.byType(Checkbox));
        await tester.pumpAndSettle();
        await Future.delayed(const Duration(seconds: 5));
        await tester.tap(find.byKey(const Key('jump')));
        await tester.pumpAndSettle();


        await Future.delayed(const Duration(seconds: 2));
        await tester.enterText(find.byType(TextField), "521130");
        await tester.pumpAndSettle();
        await tester.testTextInput.receiveAction(TextInputAction.done);
        await tester.pumpAndSettle();
        await Future.delayed(const Duration(seconds: 4));
        await tester.tap(find.byType(ElevatedButton));
        await Future.delayed(const Duration(seconds: 5));
        await tester.pumpAndSettle();



      },
    );
  });
}
