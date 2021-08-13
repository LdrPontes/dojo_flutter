import 'package:flutter/material.dart';

class BaseTestContainer extends StatelessWidget {
  final Widget child;
  const BaseTestContainer({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
