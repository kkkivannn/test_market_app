// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/theme/icons.dart';

class SearchAndFilter extends StatelessWidget {
  const SearchAndFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 35,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: Colors.white),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SvgPicture.asset(
                    SvgImg.search,
                    height: 16,
                    width: 16,
                  ),
                ),
                Expanded(
                  child: TextField(
                    textCapitalization: TextCapitalization.words,
                    cursorWidth: 1,
                    cursorColor: kPrimaryColor,
                    style: const TextStyle(
                      fontFamily: "MarkPro",
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                    decoration: const InputDecoration(
                      isDense: true,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontFamily: "MarkPro",
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 11,
          ),
          GestureDetector(
            onTap: () {
              print('lol');
            },
            child: Container(
              height: 34,
              width: 34,
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(34),
              ),
              child: Center(
                child: SvgPicture.asset(
                  SvgImg.filter,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
