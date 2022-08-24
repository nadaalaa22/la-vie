import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen  extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Notification screen',
          style: TextStyle(
              fontSize: 30.0
          ),
        ),
      ),
    );
  }
}