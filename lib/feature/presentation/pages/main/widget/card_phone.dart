import 'package:flutter/material.dart';
import 'package:test_market_app/constants.dart';

class CardPhone extends StatelessWidget {
  final String name;
  final String image;
  final int discountPrice;
  final int priceWithoutDiscount;
  const CardPhone({
    Key? key,
    required this.name,
    required this.image,
    required this.discountPrice,
    required this.priceWithoutDiscount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.white,
      elevation: 0,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '\u0024${discountPrice.toString()}',
                  style: TextStyle(
                    fontFamily: 'MarkPro',
                    fontWeight: FontWeight.w700,
                    color: kPrimaryColor,
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Text(
                    '\u0024${priceWithoutDiscount.toString()}',
                    style: const TextStyle(
                      fontFamily: 'MarkPro',
                      fontWeight: FontWeight.w500,
                      color: Color(0xffCCCCCC),
                      fontSize: 10,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text(
                name,
                style: TextStyle(
                  fontFamily: 'MarkPro',
                  fontWeight: FontWeight.w700,
                  color: kPrimaryColor,
                  fontSize: 16,
                ),
                textAlign: TextAlign.start,
              ),
            )
          ],
        ),
      ),
    );
  }
}
