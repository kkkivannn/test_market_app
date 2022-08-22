// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';

// Project imports:
import 'package:test_market_app/constants.dart';
import 'package:test_market_app/theme/icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: Container(
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
                      _currentIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: _currentIndex == index ? 80 : null,
                    child: Row(
                      children: [
                        _currentIndex == index
                            ? SvgPicture.asset(SvgImg.dot, color: Colors.white)
                            : icons[index],
                        const SizedBox(
                          width: 7,
                        ),
                        AnimatedOpacity(
                          opacity: _currentIndex == index ? 1 : 0,
                          duration: const Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          child: Text(
                            _currentIndex == index ? namePage[index] : '',
                            style: const TextStyle(
                                fontFamily: 'MarkPro',
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          body: page[_currentIndex]),
    );
  }
}
