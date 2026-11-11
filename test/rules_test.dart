import 'package:flutter_test/flutter_test.dart';
import 'package:clinicbay/domain/rules.dart';

void main() {
  test('slots advances and then stops at the cap', () {
    expect(nextSlots(0), 1);
    expect(capped(12, 12), 12);
    expect(nextSlots(-4), 0);
  });
}
