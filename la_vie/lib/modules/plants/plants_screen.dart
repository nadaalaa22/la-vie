import 'package:flutter/cupertino.dart';

class PlantsScreen  extends StatelessWidget {
  const PlantsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          'plants',
        style: TextStyle(
            fontSize: 30.0
        ),
      ),
    );
  }
}
