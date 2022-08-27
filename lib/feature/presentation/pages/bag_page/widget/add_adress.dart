import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/theme/icons.dart';
import 'package:test_market_app/theme/widgets.dart';

class AddAdress extends StatelessWidget {
  const AddAdress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: Row(
        children: [
          const CustomButtonForBasket(),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: Text(
              'Add Adress',
              style: TextStyle(
                fontFamily: 'MarkPro',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
          ),
          InkWell(
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
                    SvgImg.adress,
                    height: 13,
                    width: 13,
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
