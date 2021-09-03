import 'package:dojo/screens/read_screen.dart';
import 'package:dojo/widgets/qrcode.dart';
import 'package:flutter/material.dart';

class QrcodeScreen extends StatefulWidget {
  const QrcodeScreen({Key? key}) : super(key: key);

  @override
  _QrcodeScreenState createState() => _QrcodeScreenState();
}

class _QrcodeScreenState extends State<QrcodeScreen> {
  String? _link;
  final textController = TextEditingController();

  void createQrCode(String link) {
    setState(() {
      _link = link;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: textController,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Insira seu link',
                  labelText: 'Link',
                  border: OutlineInputBorder(),
                  contentPadding: const EdgeInsets.all(16.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  createQrCode(textController.text);
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Create QRCode",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => QRViewExample()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Read QRCode",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              if (this._link != null) QrCode(link: this._link!)
            ],
          ),
        ),
      ),
    );
  }
}
