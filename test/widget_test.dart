import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sayac_uygulamasi/main.dart';

void main() {
  testWidgets('Boş sayfa testi', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
