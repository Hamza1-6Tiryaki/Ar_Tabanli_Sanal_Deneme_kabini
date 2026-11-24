import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sayac_uygulamasi/main.dart';
import 'package:sayac_uygulamasi/ekranlar/ana_ekran.dart';
import 'package:sayac_uygulamasi/ekranlar/kamera_ekrani.dart';

void main() {
  testWidgets('AnaEkran ve KameraEkrani arasinda gezinti testi',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(AnaEkran), findsOneWidget);
    expect(find.text('Kamerayı aç'), findsOneWidget);

    await tester.tap(find.text('Kamerayı aç'));
    await tester.pumpAndSettle();

    expect(find.byType(KameraEkrani), findsOneWidget);
    expect(find.byType(BackButton), findsOneWidget);

    await tester.tap(find.byType(BackButton));
    await tester.pumpAndSettle();

    expect(find.byType(AnaEkran), findsOneWidget);
  });
}
