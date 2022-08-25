import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_market_app/theme/icons.dart';

class CharacteristicProduct extends StatelessWidget {
  final String cpu;
  final String camera;
  final String memory;
  final String sd;
  const CharacteristicProduct({
    Key? key,
    required this.cpu,
    required this.camera,
    required this.memory,
    required this.sd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> characteristics = [
      {
        "icon": SvgImg.cpu,
        "title": cpu,
      },
      {
        "icon": SvgImg.camera,
        "title": camera,
      },
      {
        "icon": SvgImg.memory,
        "title": memory,
      },
      {
        "icon": SvgImg.sd,
        "title": sd,
      },
    ];
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                characteristics.length,
                (index) => Column(
                      children: [
                        SvgPicture.asset(
                          characteristics[index]['icon'],
                          color: const Color(0xffB7B7B7),
                        ),
                        Text(
                          characteristics[index]['title'],
                          style: const TextStyle(
                            fontFamily: 'MarkPro',
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffB7B7B7),
                          ),
                        ),
                      ],
                    )),
          ),
        ),
      ),
    );
  }
}
