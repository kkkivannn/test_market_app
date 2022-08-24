// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/feature/presentation/pages/main/widget/filter_bottom_sheet.dart';

class SelectCategoryTitle extends StatelessWidget {
  const SelectCategoryTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        children: [
          Text(
            'Select Category',
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
              showModalBottomSheet<void>(
                  isScrollControlled: true,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) {
                    return const FilterBottomSheet();
                  });
            },
            child: const Text(
              'view all',
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
