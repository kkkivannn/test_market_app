import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_market_app/theme/icons.dart';

class CountWidget extends StatefulWidget {
  final int count;
  const CountWidget({
    Key? key,
    required this.count,
  }) : super(key: key);

  @override
  State<CountWidget> createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {
  int countProduct = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
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
            SizedBox(
              height: 40,
              width: 30,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    if (countProduct == 1) {
                      return;
                    } else {
                      countProduct--;
                    }
                  });
                },
                icon: SvgPicture.asset(
                  SvgImg.minus,
                ),
              ),
            ),
            Text(
              countProduct == widget.count
                  ? widget.count.toString()
                  : countProduct.toString(),
              style: const TextStyle(
                fontFamily: 'MarkPro',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 40,
              width: 30,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    countProduct++;
                  });
                },
                icon: SvgPicture.asset(
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
