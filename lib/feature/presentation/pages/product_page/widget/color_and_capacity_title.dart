import 'package:flutter/material.dart';
import 'package:test_market_app/constants.dart';

class ColorAndCapacityTitle extends StatelessWidget {
  const ColorAndCapacityTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, bottom: 15, top: 20),
      child: Text(
        'Select color and capacity',
        style: TextStyle(
            fontFamily: 'MarkPro',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: kPrimaryColor),
      ),
    );
  }
}
