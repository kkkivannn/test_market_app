// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/feature/presentation/pages/home_page/view/home.dart';
import 'package:test_market_app/theme/icons.dart';

class CustomBackButton extends StatelessWidget {
  final Color color;
  final String icon;
  const CustomBackButton({
    Key? key,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pop(),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: SvgPicture.asset(
              icon,
              height: 14,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButtonForBasket extends StatelessWidget {
  const CustomButtonForBasket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage())),
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: SvgPicture.asset(
              SvgImg.back,
              height: 14,
            ),
          ),
        ),
      ),
    );
  }
}
