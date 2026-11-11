import 'package:flutter_test/flutter_test.dart';
import 'package:clinicbay/main.dart';

void main() {
  testWidgets('demo profile opens ClinicBay', (tester) async {
    await tester.pumpWidget(const ClinicBayApp());
    await tester.tap(find.text('Open ClinicBay'));
    await tester.pumpAndSettle();
    expect(find.text('Desk'), findsOneWidget);
    expect(find.textContaining('slots'), findsWidgets);
  });
}
