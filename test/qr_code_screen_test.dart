import 'package:dojo/main.dart';
import 'package:dojo/screens/qr_screen.dart';
import 'package:dojo/widgets/qrcode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'base_test_container.dart';

void main() {
  testWidgets('Test if the screen has two buttons',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      BaseTestContainer(
        child: QrcodeScreen(),
      ),
    );

    await tester.pump();

    expect(find.text('Create QRCode'), findsOneWidget);
    expect(find.text('Read QRCode'), findsOneWidget);

    await tester.tap(find.text('Create QRCode'));
    await tester.pump();

    expect(find.byType(QrCode), findsOneWidget);
  });

  testWidgets('Test if the screen has a TextField',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      BaseTestContainer(
        child: QrcodeScreen(),
      ),
    );

    await tester.pump();

    expect(find.byType(TextField), findsOneWidget);
  });

  testWidgets('Test if the QRCode is generated with the content provided',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      BaseTestContainer(
        child: QrcodeScreen(),
      ),
    );
    await tester.pump();

    await tester.enterText(find.byType(TextField), 'google.com');

    await tester.tap(find.text('Create QRCode'));

    await tester.pump();

    QrCode qrCodeImage = tester.firstWidget(find.descendant(
      of: find.byType(QrcodeScreen),
      matching: find.byType(QrCode),
    ));

    expect(qrCodeImage.link, 'google.com');
  });
}
