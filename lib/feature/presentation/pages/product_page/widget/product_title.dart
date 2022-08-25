import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/theme/icons.dart';

class ProductTitle extends StatelessWidget {
  final bool isFavorite;
  final String titleProduct;
  const ProductTitle(
      {Key? key, required this.isFavorite, required this.titleProduct})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28, left: 38, right: 38),
      child: Row(
        children: [
          Text(
            titleProduct,
            style: TextStyle(
              fontFamily: 'MarkPro',
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: kPrimaryColor,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: isFavorite
                ? SvgPicture.asset(SvgImg.pouringLike)
                : SvgPicture.asset(SvgImg.like),
          )
        ],
      ),
    );
  }
}
