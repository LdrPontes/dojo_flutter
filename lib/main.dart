import 'package:dojo/screens/qr_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QRCODE APP',
      theme: ThemeData(
          primarySwatch: Colors.deepOrange, accentColor: Colors.green),
      home: QrcodeScreen(),
    );
  }
}
