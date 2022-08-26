import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_market_app/theme/icons.dart';

class ColorProduct extends StatefulWidget {
  const ColorProduct({
    Key? key,
  }) : super(key: key);

  @override
  State<ColorProduct> createState() => _ColorProductState();
}

class _ColorProductState extends State<ColorProduct> {
  //В API color передается с "#", я просто возьму цвета
  List<Map<String, dynamic>> colors = [
    {
      "color": const Color(0xff772D03),
      "onTap": false,
    },
    {
      "color": const Color(0xff010035),
      "onTap": false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          colors.length,
          (index) => InkWell(
            onTap: () {
              setState(() {
                if (colors[index]['onTap'] == false) {
                  for (var i = 0; i < colors.length; i++) {
                    if (colors[i]['onTap'] == true) {
                      colors[i]['onTap'] = false;
                    }
                  }
                  colors[index]['onTap'] = true;
                } else {
                  colors[index]['onTap'] = false;
                }
              });
            },
            child: Container(
              padding: const EdgeInsets.only(
                  top: 13, left: 11, right: 11, bottom: 13),
              decoration: BoxDecoration(
                color: colors[index]['color'],
                borderRadius: BorderRadius.circular(60),
              ),
              child: Center(
                child: colors[index]['onTap'] == true
                    ? SvgPicture.asset(
                        SvgImg.select,
                        height: 12,
                        width: 17,
                      )
                    : const SizedBox(
                        height: 12,
                        width: 17,
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
