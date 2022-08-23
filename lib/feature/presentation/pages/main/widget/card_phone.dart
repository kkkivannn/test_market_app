import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/theme/icons.dart';

class CardPhone extends StatelessWidget {
  final String name;
  final String image;
  final int discountPrice;
  final int priceWithoutDiscount;
  final bool isFavorit;
  const CardPhone({
    Key? key,
    required this.name,
    required this.image,
    required this.discountPrice,
    required this.priceWithoutDiscount,
    required this.isFavorit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String error = "¯\\_(ツ)_/¯";
    return PhysicalModel(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: SizedBox(
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        }
                        return Center(
                          child: CircularProgressIndicator(
                            color: kPrimaryColor,
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace? stackTrace) {
                        return const Center(
                          child: Text(error),
                        );
                      },
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Colors.black.withOpacity(.3),
                    ),
                  ],
                ),
                child: Center(
                  child: SvgPicture.asset(
                    isFavorit ? SvgImg.pouringLike : SvgImg.like,
                    color: Colors.red,
                    height: 10,
                    width: 11,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
