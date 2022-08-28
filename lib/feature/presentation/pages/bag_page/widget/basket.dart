import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/feature/domain/entities/basket_entiti.dart';
import 'package:test_market_app/feature/presentation/pages/bag_page/widget/count_widget.dart';
import 'package:test_market_app/theme/icons.dart';

import 'checkout_button.dart';

class Basket extends StatefulWidget {
  final List<BasketEntiti> product;
  final int total;
  final String delivery;
  const Basket({
    Key? key,
    required this.product,
    required this.total,
    required this.delivery,
  }) : super(key: key);

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  int countProduct = 1;
  @override
  void initState() {
    int num = 1;
    for (int i = 1; i < widget.product.length; i++) {
      num = i - 1;
      if (widget.product[num].id == i) {
        countProduct++;
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: List.generate(
                  widget.product.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(
                      top: 23,
                      bottom: 23,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              widget.product[index].images,
                              height: 88,
                              width: 88,
                              fit: BoxFit.cover,
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) {
                                  return child;
                                }
                                return Center(
                                  child: CircularProgressIndicator(
                                    color: kPrimaryColor,
                                    value: loadingProgress.expectedTotalBytes !=
                                            null
                                        ? loadingProgress
                                                .cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes!
                                        : null,
                                  ),
                                );
                              },
                              errorBuilder: (BuildContext context,
                                  Object exception, StackTrace? stackTrace) {
                                return const Center(
                                  child: Text(error),
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 155,
                          height: 85,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                widget.product[index].title,
                                style: const TextStyle(
                                  fontFamily: 'MarkPro',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '\u0024${widget.product[index].price}',
                                style: TextStyle(
                                  fontFamily: 'MarkPro',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kSecondaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CountWidget(count: countProduct),
                        InkWell(
                          child: SvgPicture.asset(SvgImg.bin),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey[700],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 35, right: 35, bottom: 7.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total',
                        style: TextStyle(
                          fontFamily: 'MarkPro',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '\u0024${widget.total} us',
                        style: const TextStyle(
                          fontFamily: 'MarkPro',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 7.5, left: 35, right: 35, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Delivey',
                        style: TextStyle(
                          fontFamily: 'MarkPro',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        widget.delivery,
                        style: const TextStyle(
                          fontFamily: 'MarkPro',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 1,
              color: Colors.grey[700],
            ),
            const CheckoutButton(),
          ],
        ),
      ),
    );
  }
}
