import 'package:flutter_test/flutter_test.dart';
import 'package:figma_mockups/main.dart';

void main() {
  testWidgets('Главное меню показывает список макетов', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Макеты'), findsOneWidget);
    expect(find.text('Welcome'), findsOneWidget);
    expect(find.text('Secrets of Atlantis'), findsOneWidget);
  });
}
