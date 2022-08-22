// Flutter imports:
import 'package:flutter/material.dart';

class BagPage extends StatelessWidget {
  const BagPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Bag'),
        ),
      ),
    );
  }
}
