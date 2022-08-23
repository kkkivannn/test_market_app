import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/theme/icons.dart';

class CardCategory extends StatefulWidget {
  const CardCategory({
    Key? key,
  }) : super(key: key);

  @override
  State<CardCategory> createState() => _CardCategoryState();
}

class _CardCategoryState extends State<CardCategory> {
  List<bool> onTap = [
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        "icon": SvgImg.mobileCategories,
        "title": "Mobile",
      },
      {
        "icon": SvgImg.computerCategories,
        "title": "Computer",
      },
      {
        "icon": SvgImg.heartCategories,
        "title": 'Health',
      },
      {
        "icon": SvgImg.booksCategories,
        "title": "Books",
      },
      {
        "icon": SvgImg.mobileCategories,
        "title": "Mobile",
      },
    ];
    return SizedBox(
      height: 93,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (onTap[index] == false) {
                      for (var i = 0; i < onTap.length; i++) {
                        if (onTap[i] == true) {
                          onTap[i] = false;
                        }
                      }
                      onTap[index] = true;
                    } else {
                      onTap[index] = false;
                    }
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: 71,
                  decoration: BoxDecoration(
                    color: onTap[index] ? kSecondaryColor : Colors.white,
                    borderRadius: BorderRadius.circular(71),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      categories[index]['icon'],
                      color: onTap[index]
                          ? Colors.white
                          : const Color(0xffB3B3C3).withOpacity(1),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Text(
                categories[index]['title'],
                style: TextStyle(
                  fontFamily: 'MarkPro',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: kPrimaryColor,
                ),
              )
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 23,
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
