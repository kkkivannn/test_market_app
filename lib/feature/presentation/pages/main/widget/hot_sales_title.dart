// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:test_market_app/constants.dart';

class HotSalesTitle extends StatelessWidget {
  const HotSalesTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Text(
            'Hot Sales',
            style: TextStyle(
              fontFamily: 'MarkPro',
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: kPrimaryColor,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              print('lol');
            },
            child: const Text(
              'see more',
              style: TextStyle(
                fontFamily: 'MarkPro',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color(0xffFF6E4E),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
