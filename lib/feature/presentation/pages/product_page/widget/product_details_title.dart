// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/theme/icons.dart';
import 'package:test_market_app/theme/widgets.dart';

class ProductDetailsTitle extends StatelessWidget {
  const ProductDetailsTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: CustomBackButton(
              color: kPrimaryColor,
              icon: SvgImg.back,
            ),
          ),
          const Spacer(),
          Text(
            'Product Detailes',
            style: TextStyle(
              fontFamily: 'MarkPro',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: SvgPicture.asset(
                      SvgImg.bag,
                      height: 13,
                      width: 13,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
