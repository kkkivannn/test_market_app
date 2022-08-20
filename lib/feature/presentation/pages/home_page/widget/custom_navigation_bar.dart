import 'package:flutter/material.dart';
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/theme/icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  List<Widget> icons = [
    SvgPicture.asset(
      SvgImg.main,
      color: Colors.white,
      height: 18,
      width: 18,
    ),
    SvgPicture.asset(
      SvgImg.bag,
      color: Colors.white,
      height: 18,
      width: 18,
    ),
    SvgPicture.asset(
      SvgImg.like,
      color: Colors.white,
      height: 18,
      width: 18,
    ),
    SvgPicture.asset(
      SvgImg.profile,
      color: Colors.white,
      height: 18,
      width: 18,
    ),
  ];
  List<String> namePage = [
    'Explorer',
    'Basket',
    'Like',
    'Profile',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = 80;
    return Container(
      width: size.width,
      height: 70,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: size.width * .17),
        separatorBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
          );
        },
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            highlightColor: Colors.black,
            splashColor: Colors.black,
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.fastLinearToSlowEaseIn,
              width: currentIndex == index ? 80 : null,
              child: Row(
                children: [
                  currentIndex == index
                      ? SvgPicture.asset(SvgImg.dot, color: Colors.white)
                      : icons[index],
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    currentIndex == index ? namePage[index] : '',
                    style: const TextStyle(
                        fontFamily: 'MarkPro',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
