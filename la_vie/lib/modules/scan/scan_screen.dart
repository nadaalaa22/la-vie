import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScanScreen  extends StatelessWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Scan screen',
          style: TextStyle(
              fontSize: 30.0
          ),
        ),
      ),
    );
  }
}
