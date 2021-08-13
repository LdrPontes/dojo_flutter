import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCode extends StatelessWidget {
  final String link; 
  const QrCode({ Key? key, required this.link }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: QrImage(data: this.link, size: 200.0)
    );
  }
}