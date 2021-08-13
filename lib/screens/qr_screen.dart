import 'package:dojo/widgets/qrcode.dart';
import 'package:flutter/material.dart';

class QrcodeScreen extends StatefulWidget {
  const QrcodeScreen({Key? key}) : super(key: key);

  @override
  _QrcodeScreenState createState() => _QrcodeScreenState();
}

class _QrcodeScreenState extends State<QrcodeScreen> {
  String? _link;

  void _createQrCode(String link) {
    setState(() {
      _link = link;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  _createQrCode('teste');
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Create QRCode",
                    style: TextStyle(
                      color: Colors.lime,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            if (this._link != null) QrCode(link: this._link!)
          ],
        ),
      ),
    );
  }
}
