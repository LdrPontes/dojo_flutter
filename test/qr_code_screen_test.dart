import 'package:dojo/main.dart';
import 'package:dojo/screens/qr_screen.dart';
import 'package:dojo/widgets/qrcode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'base_test_container.dart';

void main() {
  testWidgets('Test if the screen has two buttons', (WidgetTester tester) async {
    await tester.pumpWidget(
      BaseTestContainer(
        child: QrcodeScreen(),
      ),
    );

    await tester.pump();

    expect(find.text('Create QRCode'), findsOneWidget);

    await tester.tap(find.text('Create QRCode'));
    await tester.pump();

    expect(find.byType(QrCode), findsOneWidget);
    
  });
}
