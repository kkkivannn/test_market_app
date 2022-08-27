// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/theme/icons.dart';
import 'package:test_market_app/theme/widgets.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({Key? key}) : super(key: key);

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  String brand = 'Brand';
  String price = 'Price';
  String size = 'Size';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 375,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 24, left: 44, right: 20, bottom: 36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBackButton(
                  color: kPrimaryColor,
                  icon: SvgImg.exit,
                ),
                const Spacer(),
                Text(
                  'Filter options',
                  style: TextStyle(
                    fontFamily: 'MarkPro',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Text(
                            'Done',
                            style: TextStyle(
                              fontFamily: 'MarkPro',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 46, right: 30, top: 10, bottom: 10),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Brand',
                            style: TextStyle(
                              fontFamily: 'MarkPro',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(color: const Color(0xffDCDCDC)),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 7, bottom: 7, right: 14, left: 14),
                                    child: PopupMenuButton(
                                      initialValue: brand,
                                      onSelected: (value) {
                                        setState(() {
                                          brand = value.toString();
                                        });
                                      },
                                      position: PopupMenuPosition.under,
                                      child: Text(
                                        brand,
                                        style: const TextStyle(
                                          fontFamily: 'MarkPro',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      itemBuilder: (context) => [
                                        const PopupMenuItem<String>(
                                          value: "Samsung",
                                          child: Text(
                                            'Samsung',
                                            style: TextStyle(
                                              fontFamily: 'MarkPro',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        const PopupMenuItem<String>(
                                          value: 'Iphone',
                                          child: Text(
                                            'Iphone',
                                            style: TextStyle(
                                              fontFamily: 'MarkPro',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        const PopupMenuItem<String>(
                                          value: 'Xiaomi',
                                          child: Text(
                                            'Xiaomi',
                                            style: TextStyle(
                                              fontFamily: 'MarkPro',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        const PopupMenuItem<String>(
                                          value: 'Motorola',
                                          child: Text(
                                            'Motorola',
                                            style: TextStyle(
                                              fontFamily: 'MarkPro',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  child: SvgPicture.asset(
                                    SvgImg.selectTown,
                                    width: 16,
                                    height: 8,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Price',
                            style: TextStyle(
                              fontFamily: 'MarkPro',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(color: const Color(0xffDCDCDC)),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 7, bottom: 7, right: 14, left: 14),
                                    child: PopupMenuButton(
                                      initialValue: price,
                                      onSelected: (value) {
                                        setState(() {
                                          price = value.toString();
                                        });
                                      },
                                      position: PopupMenuPosition.under,
                                      child: Text(
                                        price,
                                        style: const TextStyle(
                                          fontFamily: 'MarkPro',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      itemBuilder: (context) => [
                                        const PopupMenuItem<String>(
                                          value: "\u00240 - \u0024300",
                                          child: Text(
                                            "\u00240 - \u0024300",
                                            style: TextStyle(
                                              fontFamily: 'MarkPro',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        const PopupMenuItem<String>(
                                          value: '\u0024300 - \u0024500',
                                          child: Text(
                                            '\u0024300 - \u0024500',
                                            style: TextStyle(
                                              fontFamily: 'MarkPro',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        const PopupMenuItem<String>(
                                          value: "\u0024500 - \u0024700",
                                          child: Text(
                                            '\u0024500 - \u0024700',
                                            style: TextStyle(
                                              fontFamily: 'MarkPro',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        const PopupMenuItem<String>(
                                          value: '\u0024700 - \u00241000',
                                          child: Text(
                                            '\u0024700 - \u00241000',
                                            style: TextStyle(
                                              fontFamily: 'MarkPro',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  child: SvgPicture.asset(
                                    SvgImg.selectTown,
                                    width: 16,
                                    height: 8,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Size',
                            style: TextStyle(
                              fontFamily: 'MarkPro',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(color: const Color(0xffDCDCDC)),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 7, bottom: 7, right: 14, left: 14),
                                    child: PopupMenuButton(
                                      initialValue: brand,
                                      onSelected: (value) {
                                        setState(() {
                                          size = value.toString();
                                        });
                                      },
                                      position: PopupMenuPosition.under,
                                      child: Text(
                                        size,
                                        style: const TextStyle(
                                          fontFamily: 'MarkPro',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      itemBuilder: (context) => [
                                        const PopupMenuItem<String>(
                                          value: "4.5 to 5.5 inches",
                                          child: Text(
                                            '4.5 to 5.5 inches',
                                            style: TextStyle(
                                              fontFamily: 'MarkPro',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        const PopupMenuItem<String>(
                                          value: '4.5 to 5.5 inches',
                                          child: Text(
                                            '4.5 to 5.5 inches',
                                            style: TextStyle(
                                              fontFamily: 'MarkPro',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        const PopupMenuItem<String>(
                                          value: '4.5 to 5.5 inches',
                                          child: Text(
                                            '4.5 to 5.5 inches',
                                            style: TextStyle(
                                              fontFamily: 'MarkPro',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        const PopupMenuItem<String>(
                                          value: '4.5 to 5.5 inches',
                                          child: Text(
                                            '4.5 to 5.5 inches',
                                            style: TextStyle(
                                              fontFamily: 'MarkPro',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  child: SvgPicture.asset(
                                    SvgImg.selectTown,
                                    width: 16,
                                    height: 8,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
