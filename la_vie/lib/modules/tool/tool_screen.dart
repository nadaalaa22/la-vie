import 'package:flutter/cupertino.dart';

class ToolsScreen  extends StatelessWidget {
  const ToolsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'tools',
        style: TextStyle(
            fontSize: 30.0
        ),
      ),
    );
  }
}
