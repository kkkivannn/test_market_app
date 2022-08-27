import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_market_app/theme/icons.dart';

class CountWidget extends StatefulWidget {
  const CountWidget({Key? key}) : super(key: key);

  @override
  State<CountWidget> createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      decoration: BoxDecoration(
        color: const Color(0xff282843),
        borderRadius: BorderRadius.circular(26),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 7, right: 7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  count--;
                });
              },
              child: SvgPicture.asset(
                SvgImg.minus,
              ),
            ),
            Text(
              count.toString(),
              style: const TextStyle(
                fontFamily: 'MarkPro',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  count++;
                });
              },
              child: SizedBox(
                height: 10,
                width: 10,
                child: SvgPicture.asset(
                  SvgImg.plus,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
