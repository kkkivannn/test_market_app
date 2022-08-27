import 'package:flutter/material.dart';
import 'package:test_market_app/constants.dart';

class MyCartTitle extends StatelessWidget {
  const MyCartTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, bottom: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'My Cart',
            style: TextStyle(
              fontFamily: 'MarkPro',
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
